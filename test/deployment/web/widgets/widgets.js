dojo.provide("widgets.widgets");
dojo.registerModulePath("ChainableWidget", "../../widgets/ChainableWidget");
/*jslint white:true, nomen: true, plusplus: true */
/*global mx, define, require, browser, devel, console */
/*mendix */
/*
    ChainableWidget
    ========================

    @file      : ChainableWidget.js
    @version   : 1.0
    @author    : Gerhard Richard Edens
    @date      : Wed, 04 Mar 2015 15:20:25 GMT
    @copyright : Mendix b.v.
    @license   : Apache 2

    Documentation
    ========================
    Describe your widget here.
*/

// Required module list. Remove unnecessary modules, you can always get them back from the boilerplate.
require({
    packages: [{ name: 'jquery', location: '../../widgets/ChainableWidget/lib', main: 'jquery-1.11.2.min' }]
}, [
    'dojo/_base/declare', 'mxui/widget/_WidgetBase', 'dijit/_TemplatedMixin',
    'mxui/dom', 'dojo/dom', 'dojo/query', 'dojo/dom-prop', 'dojo/dom-geometry', 'dojo/dom-class', 'dojo/dom-style', 'dojo/dom-construct', 'dojo/_base/array', 'dojo/_base/lang', 'dojo/text',
    'jquery', 'dojo/text!ChainableWidget/widget/template/ChainableWidget.html', 'dojo/text!ChainableWidget/widget/template/DropdownTemplate.html'
], function (declare, _WidgetBase, _TemplatedMixin, dom, dojoDom, domQuery, domProp, domGeom, domClass, domStyle, domConstruct, dojoArray, lang, text, $, widgetTemplate, dropdownTemplate) {
    'use strict';

    // Declare widget's prototype.
    return declare('ChainableWidget.widget.ChainableWidget', [ _WidgetBase, _TemplatedMixin ], {
        // _TemplatedMixin will create our dom node using this HTML template.
        templateString: widgetTemplate,

        // Parameters configured in the Modeler.
        mfToExecute: "",
        messageString: "",
        backgroundColor: "",

        // Internal variables. Non-primitives created in the prototype are shared between all widget instances.
        _handle: null,
        _contextObj: null,
        _objProperty: null,

        // dojo.declare.constructor is called to construct the widget instance. Implement to initialize non-primitive properties.
        constructor: function () {
            this._objProperty = {};
        },

        // dijit._WidgetBase.postCreate is called after constructing the widget. Implement to do extra setup work.
        postCreate: function () {
            // We get a list of car entities back!
            var continueFlow = false,
                html = null;

            console.log(this.id + '.postCreate');

            $(this._dropdowndojo).attr('id', 'dd_' + this.id);

            // Make a new piece of html
            html = $('<ul class="dropdown-menu chainable-dropdown-menu" role="menu" id="dd_' + this.id + '_opt">' + $(this._selectableid).html() + '</ul>');

            // Place this at the bottom of the body.
            $('body').append(html);

            // Remove it from the html from the widget.
            $(this._selectableid).remove();

        },

        // mxui.widget._WidgetBase.update is called when context is changed or initialized. Implement to re-render and / or fetch data.
        update: function (obj, callback) {
            console.log(this.id + '.update');

            this._contextObj = obj;
            this._updateInteractivity();
            this._resetSubscriptions();
            this._updateRendering();

            callback();
        },

        // mxui.widget._WidgetBase.enable is called when the widget should enable editing. Implement to enable editing if widget is input widget.
        enable: function () {

        },

        // mxui.widget._WidgetBase.enable is called when the widget should disable editing. Implement to disable editing if widget is input widget.
        disable: function () {

        },

        // mxui.widget._WidgetBase.resize is called when the page's layout is recalculated. Implement to do sizing calculations. Prefer using CSS instead.
        resize: function (box) {

        },

        // mxui.widget._WidgetBase.uninitialize is called when the widget is destroyed. Implement to do special tear-down work.
        uninitialize: function () {
            // Clean up listeners, helper objects, etc. There is no need to remove listeners added with this.connect / this.subscribe / this.own.
        },
        
        _updateInteractivity: function() {
            var continueFlow = false,
                html = null;

            console.log(this.id + '._updateInteractivity');

            if (this.isActiveCheck) {
                continueFlow = (this._contextObj.get(this.activateOnSelected) === true) ? true : false;
            }
            if (this.isAlwaysActive) {
                continueFlow = true;
            }

            
            // Attach a click event so we are able to know that the dropdown menu has been clicked.
            if (continueFlow) {
                $(this._dropdowndojo).removeClass('chainablewidget-disabled');
                $(this._dropdowndojo).on('click', lang.hitch(function(){
                    var offset = $(this).offset();
                    $('#' + this.id + '_opt').addClass('chainablewidget-open');
                    $('#' + this.id + '_opt').trigger('focus');
                    $('#' + this.id + '_opt').css('left', Math.round(offset.left) + 'px');
                    $('#' + this.id + '_opt').css('top', Math.round(offset.top + $(this).outerHeight()) + 'px');
                }));
            } else {
                // Destroy previous event handler.
                $(this._dropdowndojo).off();
                // First disable the widget.
                $(this._dropdowndojo).addClass('chainablewidget-disabled');
            }
        },

        _updateSelected: function() {

            // Get the one on reference
            var oneOnOne = this.oneOnOneEntity.split('/');
            
            // Get the selected object.
            if (this._contextObj.getReference(oneOnOne[0]) === ''){
                $(this._itemvalue).html('...');
                $('#dd_' + this.id + '_opt').removeClass('chainablewidget-open');
            } else {
                mx.data.get({
                    guid     : this._contextObj.getReference(oneOnOne[0]),
                    callback : lang.hitch(this, function(value) {

                        // Get an image entity
                        var parts = this.imageAttribute.split('/'),
                            valueToShow = value.get(this.valueToShow),
                            offset = $(this._dropdowndojo).offset();

                        // Fetch it.
                        value.fetch(parts[0], lang.hitch(this, function(valueToShow, value){
                            if (value !== null){
                                mx.data.get({
                                    guid     : value,
                                    callback : lang.hitch(this, function(valueToShow, obj) {
                                        var img = '<img width="' + this.imageWidth + '" src="file?fileID=' + obj.getAttribute('FileID') + '">',
                                            template = dropdownTemplate;

                                        template = template.replace('{{img}}',img);
                                        template = template.replace('{{body}}', valueToShow);
                                        $(this._itemvalue).html(template);
                                    }, valueToShow)
                                });
                            }
                        }, valueToShow));

                        $('#dd_' + this.id + '_opt').trigger('focus');
                        $('#dd_' + this.id + '_opt').css('left', Math.round(offset.left) + 'px');
                        $('#dd_' + this.id + '_opt').css('top', Math.round(offset.top + $(this._dropdowndojo).outerHeight()) + 'px');

                    })

                });
            }

        },

        _updateRendering: function () {

            mx.data.action({
                params: {
                    applyto     : "selection",
                    actionname  : this.mfToExecute,
                    guids       : [this._contextObj.getGuid()]
                },
                callback: lang.hitch(this, function (obj) {
                    // We get a list of car entities back!
                    var continueFlow = false;

                    // Check if we have a selection already stored in the flow entity.
                    this._updateSelected();

                    // Empty list of options.
                    $('#dd_' + this.id + '_opt').empty();

                    if (this.isActiveCheck) {
                        continueFlow = (this._contextObj.get(this.activateOnSelected) === true) ? true : false;
                    }
                    if (this.isAlwaysActive) {
                        continueFlow = true;
                    }

                    // Fill list of options from microflow result.
                    if (continueFlow) {

                        $.each(obj, lang.hitch(this, function(int, value){
                            var newLI = $('<li></li>'),
                                div = $('<div></div>'),
                                img = $('<img></img>'),
                                parts = this.imageAttribute.split('/');

                            // Create LI
                            newLI.attr('role', 'presentation');

                            // Create href object
                            div.attr('tabindex', '-1');
                            div.attr('class', 'chainable-div');
                            div.attr('id', 'div_' + this.id + '_' + int);
                            div.attr('data-guid', value.getGuid());
                            div.html(value.get(this.valueToShow));

                            div.on('click', lang.hitch(this, function(event){
                                var target = event.currentTarget || event.target,
                                    value = null,
                                    path = this.oneOnOneEntity.split('/');

                                // Set the selected item.
                                value = $(target).attr('data-guid');
                                this._contextObj.set(this.isSelected, true);
                                this._contextObj.addReference(path[0], value);

                                // Save the contentObj.
                                mx.data.action({
                                    params: {
                                        applyto: 'selection',
                                        actionname: this.mfToSave,
                                        guids: [this._contextObj.getGuid()]
                                    },
                                    callback: lang.hitch(this, function (obj) {
                                        console.log(this.id + ': omitted changes.');
                                        this._updateSelected();
                                        $('#dd_' + this.id + '_opt').removeClass('chainablewidget-open');
                                    }),
                                    error: lang.hitch(this, function (error) {
                                        console.log(this.id + ': An error occurred while executing microflow: ' + error.description);
                                    })
                                }, this);
                            }));

                            newLI.append(div);

                            $('#dd_' + this.id + '_opt').append(newLI);

                            // Fetch the image
                            value.fetch(parts[0], lang.hitch(this, function(int, value){
                                if (value !== null){
                                    mx.data.get({
                                        guid     : value,
                                        callback : lang.hitch(this, function(int, obj) {
                                            console.log("Received MxObject with GUID " + obj.getGUID());
                                            var img = '<img width="' + this.imageWidth + '" src="file?fileID=' + obj.getAttribute('FileID') + '">',
                                                template = dropdownTemplate;

                                            template = template.replace('{{img}}',img);
                                            template = template.replace('{{body}}',$('#div_' + this.id + '_' + int).html());
                                            $('#div_' + this.id + '_' + int).html(template);
                                        }, int)
                                    });
                                }
                            }, int));
                        }));
                    }
                }),
                error: function (error) {
                    console.log(this.id + ': An error occurred while executing microflow: ' + error.description);
                }
            }, this);
        },

        _resetSubscriptions: function () {
            // Release handle on previous object, if any.
            if (this._handle) {
                this.unsubscribe(this._handle);
                this._handle = null;
            }

            if (this._contextObj) {
                this._handle = this.subscribe({
                    guid: this._contextObj.getGuid(),
                    callback: lang.hitch(this, function(){
                        this._updateInteractivity();
                        this._updateRendering();
                    })
                });
            }
        }
    });
});
;
dojo.registerModulePath("SprintrFeedbackWidget", "../../widgets/SprintrFeedbackWidget");
dojo.provide("SprintrFeedbackWidget.SprintrFeedback");
dojo.require("dojo.io.script");

mendix.widget.declare('SprintrFeedbackWidget.SprintrFeedback', {
    inputargs: {

		sprintrapp : '',
		entity : '',
		usernameattr : '',
		emailattr : '',
		allowFile : true,
		allowSshot : false,
		sprintrserver : ''

    },

	postCreate : function(){
		if (!window.sprintrFeedback) {
			var url = this.sprintrserver + (this.sprintrserver.match(/\/$/) != null ? "" : "/");
			dojo.io.script.attach("sprintrfeedbackWrapper", url + "feedback/sprintrfeedback.js");

			this.checkScript(function () { return typeof window.sprintrFeedback != "undefined";}, dojo.hitch(this, function() {
				mx.addOnLoad(dojo.hitch(this, this.loadData));
			}), 0);
		} else {
			mx.addOnLoad(dojo.hitch(this, this.loadData));
		}
		this.actRendered();
	},
	loadData : function () {
		if (this.entity !== '' && !!mx.session.getUserId()) {
			mx.processor.get({
				guid : mx.session.getUserId(),
				callback : dojo.hitch(this, this.startFeedback),
				error: function(e) {
					alert("Error while loading feedback form: " +e);
				}
			});
		} else {
			this.startFeedback(null);
		}
	},
	startFeedback : function (userobj) {
		var data = {
			'sprintrid' : this.sprintrapp,
			'allowFile' : this.allowFile,
			'allowSshot' : this.allowSshot
		};
		var username = '';
		if (userobj != null && this.usernameattr != '' && userobj.hasAttribute(this.usernameattr))
			username = userobj.getAttribute(this.usernameattr)
		else if (mx.session.getUserId() > 0 && mx.session.isGuest && !mx.session.isGuest())
			username = mx.session.getUserName();

		var emailaddr =
			(userobj != null && this.emailattr != '' && userobj.hasAttribute(this.emailattr))
			? userobj.getAttribute(this.emailattr)
			: (username.match(/.+@.+\..+/) ? username : ''); //if it looks like an email address, it is one.

		var roles = mx.session.getUserRoles();
		var rolenames = [];
		for(var i = 0; i < roles.length; i++)
			rolenames.push(roles[i].getAttribute("Name"));

		data.userdata = {
			'username' : username,
			'emailaddress' : emailaddr,
			'userroles' : rolenames.join(" ") + " (account: " + username + ")"
		};
		window.sprintrFeedback.create(data);
	},
	checkScript : function (elem, cb, counter) {
        if (elem()) {
            cb();
        } else {
            if (counter < 30) {
                setTimeout(dojo.hitch(this, function () {
                    this.checkScript(elem, cb, counter+1);
                }), 50);
            }
        }
    },
	uninitialize : function(){
	}
});;
