DROP INDEX "idx_myfirstmodule$coachworkinternal_carinternal_myfirstmodule$carinternal_myfirstmodule$coachworkinternal";
ALTER TABLE "myfirstmodule$coachworkinternal_carinternal" RENAME TO "3dd411e9c8b94b11bd5074e154e1f588";
DROP INDEX "idx_myfirstmodule$colorcarinternal_carinternal_myfirstmodule$carinternal_myfirstmodule$colorcarinternal";
ALTER TABLE "myfirstmodule$colorcarinternal_carinternal" RENAME TO "e27e9ffa09a54acabeec13073d4ae787";
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '0dcd71c4-7bb4-4b18-a557-bcef26ddee83';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '9db7ce30-ac96-4e73-957e-269b50485c1d';
CREATE TABLE "myfirstmodule$colorcarinternal_carinternal" (
	"myfirstmodule$colorcarinternalid" BIGINT NOT NULL,
	"myfirstmodule$carinternalid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$colorcarinternalid","myfirstmodule$carinternalid"));
CREATE INDEX "idx_myfirstmodule$colorcarinternal_carinternal_myfirstmodule$carinternal_myfirstmodule$colorcarinternal" ON "myfirstmodule$colorcarinternal_carinternal"
	("myfirstmodule$carinternalid","myfirstmodule$colorcarinternalid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('783a4a76-62a4-4fd7-b774-eb031d8373b8', 
'MyFirstModule.ColorCarInternal_CarInternal', 
'myfirstmodule$colorcarinternal_carinternal', 
'53af1bed-1580-4d77-afaa-599de53d4c79', 
'6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
'myfirstmodule$colorcarinternalid', 
'myfirstmodule$carinternalid', 
'idx_myfirstmodule$colorcarinternal_carinternal_myfirstmodule$carinternal_myfirstmodule$colorcarinternal');
CREATE TABLE "myfirstmodule$coachworkinternal_carinternal" (
	"myfirstmodule$coachworkinternalid" BIGINT NOT NULL,
	"myfirstmodule$carinternalid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$coachworkinternalid","myfirstmodule$carinternalid"));
CREATE INDEX "idx_myfirstmodule$coachworkinternal_carinternal_myfirstmodule$carinternal_myfirstmodule$coachworkinternal" ON "myfirstmodule$coachworkinternal_carinternal"
	("myfirstmodule$carinternalid","myfirstmodule$coachworkinternalid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('bb916860-25a5-4341-8dd0-820c5cb1312c', 
'MyFirstModule.CoachworkInternal_CarInternal', 
'myfirstmodule$coachworkinternal_carinternal', 
'7ac441f9-93e9-40ea-ab1d-6da1bb9d5aeb', 
'6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
'myfirstmodule$coachworkinternalid', 
'myfirstmodule$carinternalid', 
'idx_myfirstmodule$coachworkinternal_carinternal_myfirstmodule$carinternal_myfirstmodule$coachworkinternal');
DROP TABLE "3dd411e9c8b94b11bd5074e154e1f588";
DROP TABLE "e27e9ffa09a54acabeec13073d4ae787";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.0.7', 
"lastsyncdate" = '20150306 15:43:21';
