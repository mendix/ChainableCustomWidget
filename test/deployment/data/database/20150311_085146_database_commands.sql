CREATE TABLE "myfirstmodule$selection" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name")
 VALUES ('e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
'MyFirstModule.Selection', 
'myfirstmodule$selection');
CREATE TABLE "myfirstmodule$selection_carinternal" (
	"myfirstmodule$selectionid" BIGINT NOT NULL,
	"myfirstmodule$carinternalid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$selectionid","myfirstmodule$carinternalid"));
CREATE INDEX "idx_myfirstmodule$selection_carinternal_myfirstmodule$carinternal_myfirstmodule$selection" ON "myfirstmodule$selection_carinternal"
	("myfirstmodule$carinternalid","myfirstmodule$selectionid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('36228a7e-54e0-4ae2-a005-6898b8546bbf', 
'MyFirstModule.Selection_CarInternal', 
'myfirstmodule$selection_carinternal', 
'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
'6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
'myfirstmodule$selectionid', 
'myfirstmodule$carinternalid', 
'idx_myfirstmodule$selection_carinternal_myfirstmodule$carinternal_myfirstmodule$selection');
CREATE TABLE "myfirstmodule$selection_coachworkinternal" (
	"myfirstmodule$selectionid" BIGINT NOT NULL,
	"myfirstmodule$coachworkinternalid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$selectionid","myfirstmodule$coachworkinternalid"));
CREATE INDEX "idx_myfirstmodule$selection_coachworkinternal_myfirstmodule$coachworkinternal_myfirstmodule$selection" ON "myfirstmodule$selection_coachworkinternal"
	("myfirstmodule$coachworkinternalid","myfirstmodule$selectionid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('6d138475-652f-4111-8202-233f8f68a6ae', 
'MyFirstModule.Selection_CoachworkInternal', 
'myfirstmodule$selection_coachworkinternal', 
'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
'7ac441f9-93e9-40ea-ab1d-6da1bb9d5aeb', 
'myfirstmodule$selectionid', 
'myfirstmodule$coachworkinternalid', 
'idx_myfirstmodule$selection_coachworkinternal_myfirstmodule$coachworkinternal_myfirstmodule$selection');
CREATE TABLE "myfirstmodule$selection_colorcarinternal" (
	"myfirstmodule$selectionid" BIGINT NOT NULL,
	"myfirstmodule$colorcarinternalid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$selectionid","myfirstmodule$colorcarinternalid"));
CREATE INDEX "idx_myfirstmodule$selection_colorcarinternal_myfirstmodule$colorcarinternal_myfirstmodule$selection" ON "myfirstmodule$selection_colorcarinternal"
	("myfirstmodule$colorcarinternalid","myfirstmodule$selectionid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('5a995bee-1d97-4540-af70-92305531023c', 
'MyFirstModule.Selection_ColorCarInternal', 
'myfirstmodule$selection_colorcarinternal', 
'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
'53af1bed-1580-4d77-afaa-599de53d4c79', 
'myfirstmodule$selectionid', 
'myfirstmodule$colorcarinternalid', 
'idx_myfirstmodule$selection_colorcarinternal_myfirstmodule$colorcarinternal_myfirstmodule$selection');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.0.7', 
"lastsyncdate" = '20150311 08:51:44';
