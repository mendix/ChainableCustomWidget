DROP INDEX "idx_myfirstmodule$selection_carinternal_myfirstmodule$carinternal_myfirstmodule$selection";
DROP INDEX "idx_myfirstmodule$selection_coachworkinternal_myfirstmodule$coachworkinternal_myfirstmodule$selection";
DROP INDEX "idx_myfirstmodule$selection_colorcarinternal_myfirstmodule$colorcarinternal_myfirstmodule$selection";
ALTER TABLE "myfirstmodule$selection" RENAME TO "myfirstmodule$flowentity";
ALTER TABLE "myfirstmodule$flowentity"
	ADD "hascolorcar" BOOLEAN NULL;
UPDATE "myfirstmodule$flowentity"
 SET "hascolorcar" = false;
ALTER TABLE "myfirstmodule$flowentity"
	ADD "hascoachwork" BOOLEAN NULL;
UPDATE "myfirstmodule$flowentity"
 SET "hascoachwork" = false;
ALTER TABLE "myfirstmodule$flowentity"
	ADD "hascar" BOOLEAN NULL;
UPDATE "myfirstmodule$flowentity"
 SET "hascar" = false;
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'MyFirstModule.FlowEntity', 
"table_name" = 'myfirstmodule$flowentity', 
"superentity_id" = NULL
 WHERE "id" = 'e2776d6d-5a8f-4bf5-8898-281cce5d1842';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('faaf85f9-09a5-4bb3-a26d-2d6aff1eae44', 
'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
'HasColorCar', 
'hascolorcar', 
10, 
200, 
'false', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('dc663805-b8f3-4b16-bb10-0b55d64e5d6a', 
'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
'HasCar', 
'hascar', 
10, 
200, 
'false', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('cf4a19b6-7325-4703-9c93-c6a8855cd0ba', 
'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
'HasCoachwork', 
'hascoachwork', 
10, 
200, 
'false', 
false);
CREATE TABLE "myfirstmodule$flowentity_account" (
	"myfirstmodule$flowentityid" BIGINT NOT NULL,
	"administration$accountid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$flowentityid","administration$accountid"));
CREATE INDEX "idx_myfirstmodule$flowentity_account_administration$account_myfirstmodule$flowentity" ON "myfirstmodule$flowentity_account"
	("administration$accountid","myfirstmodule$flowentityid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('f7dde7a4-7e4d-4932-a6ed-34346c7a4814', 
'MyFirstModule.FlowEntity_Account', 
'myfirstmodule$flowentity_account', 
'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
'3078a23e-13b2-4a9b-84e4-2881fdee53c6', 
'myfirstmodule$flowentityid', 
'administration$accountid', 
'idx_myfirstmodule$flowentity_account_administration$account_myfirstmodule$flowentity');
ALTER TABLE "myfirstmodule$selection_carinternal" ALTER COLUMN "myfirstmodule$selectionid" RENAME TO "myfirstmodule$flowentityid";
CREATE INDEX "idx_myfirstmodule$selection_carinternal_myfirstmodule$carinternal_myfirstmodule$flowentity" ON "myfirstmodule$selection_carinternal"
	("myfirstmodule$carinternalid","myfirstmodule$flowentityid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.Selection_CarInternal', 
"table_name" = 'myfirstmodule$selection_carinternal', 
"parent_entity_id" = 'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
"child_entity_id" = '6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
"parent_column_name" = 'myfirstmodule$flowentityid', 
"child_column_name" = 'myfirstmodule$carinternalid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$selection_carinternal_myfirstmodule$carinternal_myfirstmodule$flowentity'
 WHERE "id" = '36228a7e-54e0-4ae2-a005-6898b8546bbf';
ALTER TABLE "myfirstmodule$selection_coachworkinternal" ALTER COLUMN "myfirstmodule$selectionid" RENAME TO "myfirstmodule$flowentityid";
CREATE INDEX "idx_myfirstmodule$selection_coachworkinternal_myfirstmodule$coachworkinternal_myfirstmodule$flowentity" ON "myfirstmodule$selection_coachworkinternal"
	("myfirstmodule$coachworkinternalid","myfirstmodule$flowentityid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.Selection_CoachworkInternal', 
"table_name" = 'myfirstmodule$selection_coachworkinternal', 
"parent_entity_id" = 'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
"child_entity_id" = '7ac441f9-93e9-40ea-ab1d-6da1bb9d5aeb', 
"parent_column_name" = 'myfirstmodule$flowentityid', 
"child_column_name" = 'myfirstmodule$coachworkinternalid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$selection_coachworkinternal_myfirstmodule$coachworkinternal_myfirstmodule$flowentity'
 WHERE "id" = '6d138475-652f-4111-8202-233f8f68a6ae';
ALTER TABLE "myfirstmodule$selection_colorcarinternal" ALTER COLUMN "myfirstmodule$selectionid" RENAME TO "myfirstmodule$flowentityid";
CREATE INDEX "idx_myfirstmodule$selection_colorcarinternal_myfirstmodule$colorcarinternal_myfirstmodule$flowentity" ON "myfirstmodule$selection_colorcarinternal"
	("myfirstmodule$colorcarinternalid","myfirstmodule$flowentityid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.Selection_ColorCarInternal', 
"table_name" = 'myfirstmodule$selection_colorcarinternal', 
"parent_entity_id" = 'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
"child_entity_id" = '53af1bed-1580-4d77-afaa-599de53d4c79', 
"parent_column_name" = 'myfirstmodule$flowentityid', 
"child_column_name" = 'myfirstmodule$colorcarinternalid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$selection_colorcarinternal_myfirstmodule$colorcarinternal_myfirstmodule$flowentity'
 WHERE "id" = '5a995bee-1d97-4540-af70-92305531023c';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.0.7', 
"lastsyncdate" = '20150311 09:56:21';
