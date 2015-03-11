DROP INDEX "idx_myfirstmodule$carinternal_coachworkinternal_myfirstmodule$coachworkinternal_myfirstmodule$carinternal";
ALTER TABLE "myfirstmodule$carinternal_coachworkinternal" RENAME TO "5dac788ffffb44d2a8f3ca6b4cbb49fd";
DROP INDEX "idx_myfirstmodule$carinternal_colorcarinternal_myfirstmodule$colorcarinternal_myfirstmodule$carinternal";
ALTER TABLE "myfirstmodule$carinternal_colorcarinternal" RENAME TO "cfc5172873e74d6b97febc4d0e3e9c7e";
DROP INDEX "idx_myfirstmodule$coachworkinternal_coachworkimages_myfirstmodule$coachworkinternalimage_myfirstmodule$coachworkinternal";
ALTER TABLE "myfirstmodule$coachworkinternal_coachworkimages" RENAME TO "f2ddc86d120e4081974c65a4e2adddc2";
DROP INDEX "idx_myfirstmodule$colorcarinternal_colorcarimages_myfirstmodule$colorcarinternalimage_myfirstmodule$colorcarinternal";
ALTER TABLE "myfirstmodule$colorcarinternal_colorcarimages" RENAME TO "5270094142ae48af8d8d2563acb7889c";
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '3c2a1320-fbd5-4cbf-bec4-dd21c6c13318';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '6a91eacb-f590-4c13-99ed-b09894e4f7c7';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '2e205e28-4c31-44b7-9ddc-735b004cff88';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '8965a5cc-76c3-4749-a170-ef41d3868913';
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
 VALUES ('9db7ce30-ac96-4e73-957e-269b50485c1d', 
'MyFirstModule.ColorCarInternal_CarInternal', 
'myfirstmodule$colorcarinternal_carinternal', 
'53af1bed-1580-4d77-afaa-599de53d4c79', 
'6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
'myfirstmodule$colorcarinternalid', 
'myfirstmodule$carinternalid', 
'idx_myfirstmodule$colorcarinternal_carinternal_myfirstmodule$carinternal_myfirstmodule$colorcarinternal');
CREATE TABLE "myfirstmodule$colorcarinternal_colorcarinternalimage" (
	"myfirstmodule$colorcarinternalid" BIGINT NOT NULL,
	"myfirstmodule$colorcarinternalimageid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$colorcarinternalid","myfirstmodule$colorcarinternalimageid"));
CREATE INDEX "idx_myfirstmodule$colorcarinternal_colorcarinternalimage_myfirstmodule$colorcarinternalimage_myfirstmodule$colorcarinternal" ON "myfirstmodule$colorcarinternal_colorcarinternalimage"
	("myfirstmodule$colorcarinternalimageid","myfirstmodule$colorcarinternalid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('39c03ef7-6ff2-489b-87e7-0998f8e6fb5d', 
'MyFirstModule.ColorCarInternal_ColorCarInternalImage', 
'myfirstmodule$colorcarinternal_colorcarinternalimage', 
'53af1bed-1580-4d77-afaa-599de53d4c79', 
'6e80b9c3-498d-4469-8c91-7135075c4b82', 
'myfirstmodule$colorcarinternalid', 
'myfirstmodule$colorcarinternalimageid', 
'idx_myfirstmodule$colorcarinternal_colorcarinternalimage_myfirstmodule$colorcarinternalimage_myfirstmodule$colorcarinternal');
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
 VALUES ('0dcd71c4-7bb4-4b18-a557-bcef26ddee83', 
'MyFirstModule.CoachworkInternal_CarInternal', 
'myfirstmodule$coachworkinternal_carinternal', 
'7ac441f9-93e9-40ea-ab1d-6da1bb9d5aeb', 
'6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
'myfirstmodule$coachworkinternalid', 
'myfirstmodule$carinternalid', 
'idx_myfirstmodule$coachworkinternal_carinternal_myfirstmodule$carinternal_myfirstmodule$coachworkinternal');
CREATE TABLE "myfirstmodule$coachworkinternal_coachworkinternalimage" (
	"myfirstmodule$coachworkinternalid" BIGINT NOT NULL,
	"myfirstmodule$coachworkinternalimageid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$coachworkinternalid","myfirstmodule$coachworkinternalimageid"));
CREATE INDEX "idx_myfirstmodule$coachworkinternal_coachworkinternalimage_myfirstmodule$coachworkinternalimage_myfirstmodule$coachworkinternal" ON "myfirstmodule$coachworkinternal_coachworkinternalimage"
	("myfirstmodule$coachworkinternalimageid","myfirstmodule$coachworkinternalid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('07a8b8a2-2578-436e-b3d4-eb14060b30c1', 
'MyFirstModule.CoachworkInternal_CoachworkInternalImage', 
'myfirstmodule$coachworkinternal_coachworkinternalimage', 
'7ac441f9-93e9-40ea-ab1d-6da1bb9d5aeb', 
'b2379a03-26b4-4f86-a81b-51fed17289a7', 
'myfirstmodule$coachworkinternalid', 
'myfirstmodule$coachworkinternalimageid', 
'idx_myfirstmodule$coachworkinternal_coachworkinternalimage_myfirstmodule$coachworkinternalimage_myfirstmodule$coachworkinternal');
DROP TABLE "5dac788ffffb44d2a8f3ca6b4cbb49fd";
DROP TABLE "cfc5172873e74d6b97febc4d0e3e9c7e";
DROP TABLE "f2ddc86d120e4081974c65a4e2adddc2";
DROP TABLE "5270094142ae48af8d8d2563acb7889c";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.0.7', 
"lastsyncdate" = '20150306 14:57:19';
