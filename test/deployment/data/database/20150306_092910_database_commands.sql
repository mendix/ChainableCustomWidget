DROP INDEX "idx_myfirstmodule$carinternal_image_system$image_myfirstmodule$carinternal";
ALTER TABLE "myfirstmodule$carinternal_image" RENAME TO "57fef094920a412d971631c9ebab1499";
DELETE FROM "mendixsystem$association" 
 WHERE "id" = 'cc05291b-d8a3-4364-9aa7-4cf8091095af';
ALTER TABLE "system$image"
	ADD "submetaobjectname" VARCHAR_IGNORECASE(255) NULL;
UPDATE "system$image"
 SET "submetaobjectname" = 'System.Image';
CREATE INDEX "idx_system$image_submetaobjectname" ON "system$image"
	("submetaobjectname","id");
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('272f49fe-6a64-3ede-a32d-344a34e57b9f', 
'37827192-315d-4ab6-85b8-f626f866ea76', 
'submetaobjectname', 
'submetaobjectname', 
30, 
255, 
'System.Image', 
false);
INSERT INTO "mendixsystem$index" ("id", 
"table_id", 
"index_name")
 VALUES ('00a9ec1c-4fab-368f-83d4-ffa8ff501c8c', 
'37827192-315d-4ab6-85b8-f626f866ea76', 
'idx_system$image_submetaobjectname');
INSERT INTO "mendixsystem$index_column" ("index_id", 
"column_id", 
"sort_order", 
"ordinal")
 VALUES ('00a9ec1c-4fab-368f-83d4-ffa8ff501c8c', 
'272f49fe-6a64-3ede-a32d-344a34e57b9f', 
false, 
0);
CREATE TABLE "myfirstmodule$carcoachcolorimages" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id")
 VALUES ('23479a51-1e57-4dc9-a2d6-b368e6b0ee6e', 
'MyFirstModule.CarCoachColorImages', 
'myfirstmodule$carcoachcolorimages', 
'37827192-315d-4ab6-85b8-f626f866ea76');
CREATE TABLE "myfirstmodule$carinternal_carcoachcolorimages" (
	"myfirstmodule$carinternalid" BIGINT NOT NULL,
	"myfirstmodule$carcoachcolorimagesid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$carinternalid","myfirstmodule$carcoachcolorimagesid"));
CREATE INDEX "idx_myfirstmodule$carinternal_carcoachcolorimages_myfirstmodule$carcoachcolorimages_myfirstmodule$carinternal" ON "myfirstmodule$carinternal_carcoachcolorimages"
	("myfirstmodule$carcoachcolorimagesid","myfirstmodule$carinternalid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('b7cd5e66-5931-4369-8eec-167d910bd7a4', 
'MyFirstModule.CarInternal_CarCoachColorImages', 
'myfirstmodule$carinternal_carcoachcolorimages', 
'6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
'23479a51-1e57-4dc9-a2d6-b368e6b0ee6e', 
'myfirstmodule$carinternalid', 
'myfirstmodule$carcoachcolorimagesid', 
'idx_myfirstmodule$carinternal_carcoachcolorimages_myfirstmodule$carcoachcolorimages_myfirstmodule$carinternal');
DROP TABLE "57fef094920a412d971631c9ebab1499";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.0.7', 
"lastsyncdate" = '20150306 09:29:09';
