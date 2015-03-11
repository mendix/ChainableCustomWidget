DROP INDEX "idx_myfirstmodule$carinternal_carcoachcolorimages_myfirstmodule$carcoachcolorimages_myfirstmodule$carinternal";
ALTER TABLE "myfirstmodule$carcoachcolorimages" RENAME TO "myfirstmodule$carinternalimage";
UPDATE "system$image"
 SET "submetaobjectname" = 'MyFirstModule.CarInternalImage'
 WHERE "submetaobjectname" = 'MyFirstModule.CarCoachColorImages';
UPDATE "system$filedocument"
 SET "submetaobjectname" = 'MyFirstModule.CarInternalImage'
 WHERE "submetaobjectname" = 'MyFirstModule.CarCoachColorImages';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'MyFirstModule.CarInternalImage', 
"table_name" = 'myfirstmodule$carinternalimage', 
"superentity_id" = '37827192-315d-4ab6-85b8-f626f866ea76'
 WHERE "id" = '23479a51-1e57-4dc9-a2d6-b368e6b0ee6e';
CREATE TABLE "myfirstmodule$coachworkinternalimage" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id")
 VALUES ('b2379a03-26b4-4f86-a81b-51fed17289a7', 
'MyFirstModule.CoachworkInternalImage', 
'myfirstmodule$coachworkinternalimage', 
'37827192-315d-4ab6-85b8-f626f866ea76');
ALTER TABLE "myfirstmodule$carinternal_carcoachcolorimages" ALTER COLUMN "myfirstmodule$carcoachcolorimagesid" RENAME TO "myfirstmodule$carinternalimageid";
CREATE INDEX "idx_myfirstmodule$carinternal_carcoachcolorimages_myfirstmodule$carinternalimage_myfirstmodule$carinternal" ON "myfirstmodule$carinternal_carcoachcolorimages"
	("myfirstmodule$carinternalimageid","myfirstmodule$carinternalid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.CarInternal_CarCoachColorImages', 
"table_name" = 'myfirstmodule$carinternal_carcoachcolorimages', 
"parent_entity_id" = '6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
"child_entity_id" = '23479a51-1e57-4dc9-a2d6-b368e6b0ee6e', 
"parent_column_name" = 'myfirstmodule$carinternalid', 
"child_column_name" = 'myfirstmodule$carinternalimageid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$carinternal_carcoachcolorimages_myfirstmodule$carinternalimage_myfirstmodule$carinternal'
 WHERE "id" = 'b7cd5e66-5931-4369-8eec-167d910bd7a4';
CREATE TABLE "myfirstmodule$carinternal_account" (
	"myfirstmodule$carinternalid" BIGINT NOT NULL,
	"administration$accountid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$carinternalid","administration$accountid"));
CREATE INDEX "idx_myfirstmodule$carinternal_account_administration$account_myfirstmodule$carinternal" ON "myfirstmodule$carinternal_account"
	("administration$accountid","myfirstmodule$carinternalid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('953415d2-5802-4fa2-85a0-d49074ba6069', 
'MyFirstModule.CarInternal_Account', 
'myfirstmodule$carinternal_account', 
'6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
'3078a23e-13b2-4a9b-84e4-2881fdee53c6', 
'myfirstmodule$carinternalid', 
'administration$accountid', 
'idx_myfirstmodule$carinternal_account_administration$account_myfirstmodule$carinternal');
CREATE TABLE "myfirstmodule$coachworkinternal_coachworkimages" (
	"myfirstmodule$coachworkinternalid" BIGINT NOT NULL,
	"myfirstmodule$coachworkinternalimageid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$coachworkinternalid","myfirstmodule$coachworkinternalimageid"));
CREATE INDEX "idx_myfirstmodule$coachworkinternal_coachworkimages_myfirstmodule$coachworkinternalimage_myfirstmodule$coachworkinternal" ON "myfirstmodule$coachworkinternal_coachworkimages"
	("myfirstmodule$coachworkinternalimageid","myfirstmodule$coachworkinternalid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('2e205e28-4c31-44b7-9ddc-735b004cff88', 
'MyFirstModule.CoachworkInternal_CoachworkImages', 
'myfirstmodule$coachworkinternal_coachworkimages', 
'7ac441f9-93e9-40ea-ab1d-6da1bb9d5aeb', 
'b2379a03-26b4-4f86-a81b-51fed17289a7', 
'myfirstmodule$coachworkinternalid', 
'myfirstmodule$coachworkinternalimageid', 
'idx_myfirstmodule$coachworkinternal_coachworkimages_myfirstmodule$coachworkinternalimage_myfirstmodule$coachworkinternal');
CREATE TABLE "myfirstmodule$colorcarinternalimage" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id")
 VALUES ('6e80b9c3-498d-4469-8c91-7135075c4b82', 
'MyFirstModule.ColorCarInternalImage', 
'myfirstmodule$colorcarinternalimage', 
'37827192-315d-4ab6-85b8-f626f866ea76');
CREATE TABLE "myfirstmodule$colorcarinternal_colorcarimages" (
	"myfirstmodule$colorcarinternalid" BIGINT NOT NULL,
	"myfirstmodule$colorcarinternalimageid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$colorcarinternalid","myfirstmodule$colorcarinternalimageid"));
CREATE INDEX "idx_myfirstmodule$colorcarinternal_colorcarimages_myfirstmodule$colorcarinternalimage_myfirstmodule$colorcarinternal" ON "myfirstmodule$colorcarinternal_colorcarimages"
	("myfirstmodule$colorcarinternalimageid","myfirstmodule$colorcarinternalid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('8965a5cc-76c3-4749-a170-ef41d3868913', 
'MyFirstModule.ColorCarInternal_ColorCarImages', 
'myfirstmodule$colorcarinternal_colorcarimages', 
'53af1bed-1580-4d77-afaa-599de53d4c79', 
'6e80b9c3-498d-4469-8c91-7135075c4b82', 
'myfirstmodule$colorcarinternalid', 
'myfirstmodule$colorcarinternalimageid', 
'idx_myfirstmodule$colorcarinternal_colorcarimages_myfirstmodule$colorcarinternalimage_myfirstmodule$colorcarinternal');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.0.7', 
"lastsyncdate" = '20150306 10:32:11';
