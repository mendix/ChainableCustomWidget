DROP INDEX "idx_myfirstmodule$colorcarinternal_colorcarinternalimage_myfirstmodule$colorcarinternalimage_myfirstmodule$colorcarinternal";
DROP INDEX "idx_myfirstmodule$colorcarinternal_carinternal_myfirstmodule$carinternal_myfirstmodule$colorcarinternal";
DROP INDEX "idx_myfirstmodule$carinternal_carinternalimage_myfirstmodule$carinternalimage_myfirstmodule$carinternal";
DROP INDEX "idx_myfirstmodule$coachworkinternal_coachworkinternalimage_myfirstmodule$coachworkinternalimage_myfirstmodule$coachworkinternal";
DROP INDEX "idx_myfirstmodule$coachworkinternal_carinternal_myfirstmodule$carinternal_myfirstmodule$coachworkinternal";
DROP INDEX "idx_myfirstmodule$selection_carinternal_myfirstmodule$carinternal_myfirstmodule$flowentity";
DROP INDEX "idx_myfirstmodule$selection_coachworkinternal_myfirstmodule$coachworkinternal_myfirstmodule$flowentity";
DROP INDEX "idx_myfirstmodule$selection_colorcarinternal_myfirstmodule$colorcarinternal_myfirstmodule$flowentity";
ALTER TABLE "myfirstmodule$carinternal" RENAME TO "myfirstmodule$car";
ALTER TABLE "myfirstmodule$carinternalimage" RENAME TO "myfirstmodule$carimage";
UPDATE "system$image"
 SET "submetaobjectname" = 'MyFirstModule.CarImage'
 WHERE "submetaobjectname" = 'MyFirstModule.CarInternalImage';
UPDATE "system$filedocument"
 SET "submetaobjectname" = 'MyFirstModule.CarImage'
 WHERE "submetaobjectname" = 'MyFirstModule.CarInternalImage';
ALTER TABLE "myfirstmodule$coachworkinternal" RENAME TO "myfirstmodule$coachwork";
ALTER TABLE "myfirstmodule$coachworkinternalimage" RENAME TO "myfirstmodule$coachworkimage";
UPDATE "system$image"
 SET "submetaobjectname" = 'MyFirstModule.CoachworkImage'
 WHERE "submetaobjectname" = 'MyFirstModule.CoachworkInternalImage';
UPDATE "system$filedocument"
 SET "submetaobjectname" = 'MyFirstModule.CoachworkImage'
 WHERE "submetaobjectname" = 'MyFirstModule.CoachworkInternalImage';
ALTER TABLE "myfirstmodule$colorcarinternal" RENAME TO "myfirstmodule$carcolor";
ALTER TABLE "myfirstmodule$colorcarinternalimage" RENAME TO "myfirstmodule$carcolorimage";
UPDATE "system$image"
 SET "submetaobjectname" = 'MyFirstModule.CarColorImage'
 WHERE "submetaobjectname" = 'MyFirstModule.ColorCarInternalImage';
UPDATE "system$filedocument"
 SET "submetaobjectname" = 'MyFirstModule.CarColorImage'
 WHERE "submetaobjectname" = 'MyFirstModule.ColorCarInternalImage';
ALTER TABLE "myfirstmodule$colorcarinternal_colorcarinternalimage" RENAME TO "myfirstmodule$carcolor_carcolorimage";
ALTER TABLE "myfirstmodule$colorcarinternal_carinternal" RENAME TO "myfirstmodule$colorcar_car";
ALTER TABLE "myfirstmodule$carinternal_carinternalimage" RENAME TO "myfirstmodule$car_carimage";
ALTER TABLE "myfirstmodule$coachworkinternal_coachworkinternalimage" RENAME TO "myfirstmodule$coachwork_coachworkimage";
ALTER TABLE "myfirstmodule$coachworkinternal_carinternal" RENAME TO "myfirstmodule$coachwork_car";
ALTER TABLE "myfirstmodule$selection_carinternal" RENAME TO "myfirstmodule$selection_car";
ALTER TABLE "myfirstmodule$selection_coachworkinternal" RENAME TO "myfirstmodule$selection_coachwork";
ALTER TABLE "myfirstmodule$selection_colorcarinternal" RENAME TO "myfirstmodule$selection_carcolor";
ALTER TABLE "myfirstmodule$car" ALTER COLUMN "carname" RENAME TO "name";
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'MyFirstModule.Car', 
"table_name" = 'myfirstmodule$car', 
"superentity_id" = NULL
 WHERE "id" = '6f11f3c6-9f64-42ae-ad58-5441c194fbee';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
"attribute_name" = 'Name', 
"column_name" = 'name', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '6a704318-9182-4ae3-8755-1a1c23717038';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'MyFirstModule.CarImage', 
"table_name" = 'myfirstmodule$carimage', 
"superentity_id" = '37827192-315d-4ab6-85b8-f626f866ea76'
 WHERE "id" = '23479a51-1e57-4dc9-a2d6-b368e6b0ee6e';
ALTER TABLE "myfirstmodule$coachwork" ALTER COLUMN "coachworkname" RENAME TO "name";
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'MyFirstModule.Coachwork', 
"table_name" = 'myfirstmodule$coachwork', 
"superentity_id" = NULL
 WHERE "id" = '7ac441f9-93e9-40ea-ab1d-6da1bb9d5aeb';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '7ac441f9-93e9-40ea-ab1d-6da1bb9d5aeb', 
"attribute_name" = 'Name', 
"column_name" = 'name', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = 'd6b99f95-6d8e-40b8-a79a-0e8a5c3928d9';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'MyFirstModule.CoachworkImage', 
"table_name" = 'myfirstmodule$coachworkimage', 
"superentity_id" = '37827192-315d-4ab6-85b8-f626f866ea76'
 WHERE "id" = 'b2379a03-26b4-4f86-a81b-51fed17289a7';
ALTER TABLE "myfirstmodule$carcolor" ALTER COLUMN "colorcarname" RENAME TO "name";
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'MyFirstModule.CarColor', 
"table_name" = 'myfirstmodule$carcolor', 
"superentity_id" = NULL
 WHERE "id" = '53af1bed-1580-4d77-afaa-599de53d4c79';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '53af1bed-1580-4d77-afaa-599de53d4c79', 
"attribute_name" = 'Name', 
"column_name" = 'name', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '54f7996e-fa6b-4692-9ff5-35dd6d6efc66';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'MyFirstModule.CarColorImage', 
"table_name" = 'myfirstmodule$carcolorimage', 
"superentity_id" = '37827192-315d-4ab6-85b8-f626f866ea76'
 WHERE "id" = '6e80b9c3-498d-4469-8c91-7135075c4b82';
ALTER TABLE "myfirstmodule$carcolor_carcolorimage" ALTER COLUMN "myfirstmodule$colorcarinternalimageid" RENAME TO "myfirstmodule$carcolorimageid";
ALTER TABLE "myfirstmodule$carcolor_carcolorimage" ALTER COLUMN "myfirstmodule$colorcarinternalid" RENAME TO "myfirstmodule$carcolorid";
CREATE INDEX "idx_myfirstmodule$carcolor_carcolorimage_myfirstmodule$carcolorimage_myfirstmodule$carcolor" ON "myfirstmodule$carcolor_carcolorimage"
	("myfirstmodule$carcolorimageid","myfirstmodule$carcolorid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.CarColor_CarColorImage', 
"table_name" = 'myfirstmodule$carcolor_carcolorimage', 
"parent_entity_id" = '53af1bed-1580-4d77-afaa-599de53d4c79', 
"child_entity_id" = '6e80b9c3-498d-4469-8c91-7135075c4b82', 
"parent_column_name" = 'myfirstmodule$carcolorid', 
"child_column_name" = 'myfirstmodule$carcolorimageid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$carcolor_carcolorimage_myfirstmodule$carcolorimage_myfirstmodule$carcolor'
 WHERE "id" = '39c03ef7-6ff2-489b-87e7-0998f8e6fb5d';
ALTER TABLE "myfirstmodule$colorcar_car" ALTER COLUMN "myfirstmodule$carinternalid" RENAME TO "myfirstmodule$carid";
ALTER TABLE "myfirstmodule$colorcar_car" ALTER COLUMN "myfirstmodule$colorcarinternalid" RENAME TO "myfirstmodule$carcolorid";
CREATE INDEX "idx_myfirstmodule$colorcar_car_myfirstmodule$car_myfirstmodule$carcolor" ON "myfirstmodule$colorcar_car"
	("myfirstmodule$carid","myfirstmodule$carcolorid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.ColorCar_Car', 
"table_name" = 'myfirstmodule$colorcar_car', 
"parent_entity_id" = '53af1bed-1580-4d77-afaa-599de53d4c79', 
"child_entity_id" = '6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
"parent_column_name" = 'myfirstmodule$carcolorid', 
"child_column_name" = 'myfirstmodule$carid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$colorcar_car_myfirstmodule$car_myfirstmodule$carcolor'
 WHERE "id" = '783a4a76-62a4-4fd7-b774-eb031d8373b8';
ALTER TABLE "myfirstmodule$car_carimage" ALTER COLUMN "myfirstmodule$carinternalimageid" RENAME TO "myfirstmodule$carimageid";
ALTER TABLE "myfirstmodule$car_carimage" ALTER COLUMN "myfirstmodule$carinternalid" RENAME TO "myfirstmodule$carid";
CREATE INDEX "idx_myfirstmodule$car_carimage_myfirstmodule$carimage_myfirstmodule$car" ON "myfirstmodule$car_carimage"
	("myfirstmodule$carimageid","myfirstmodule$carid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.Car_CarImage', 
"table_name" = 'myfirstmodule$car_carimage', 
"parent_entity_id" = '6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
"child_entity_id" = '23479a51-1e57-4dc9-a2d6-b368e6b0ee6e', 
"parent_column_name" = 'myfirstmodule$carid', 
"child_column_name" = 'myfirstmodule$carimageid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$car_carimage_myfirstmodule$carimage_myfirstmodule$car'
 WHERE "id" = 'b7cd5e66-5931-4369-8eec-167d910bd7a4';
ALTER TABLE "myfirstmodule$coachwork_coachworkimage" ALTER COLUMN "myfirstmodule$coachworkinternalimageid" RENAME TO "myfirstmodule$coachworkimageid";
ALTER TABLE "myfirstmodule$coachwork_coachworkimage" ALTER COLUMN "myfirstmodule$coachworkinternalid" RENAME TO "myfirstmodule$coachworkid";
CREATE INDEX "idx_myfirstmodule$coachwork_coachworkimage_myfirstmodule$coachworkimage_myfirstmodule$coachwork" ON "myfirstmodule$coachwork_coachworkimage"
	("myfirstmodule$coachworkimageid","myfirstmodule$coachworkid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.Coachwork_CoachworkImage', 
"table_name" = 'myfirstmodule$coachwork_coachworkimage', 
"parent_entity_id" = '7ac441f9-93e9-40ea-ab1d-6da1bb9d5aeb', 
"child_entity_id" = 'b2379a03-26b4-4f86-a81b-51fed17289a7', 
"parent_column_name" = 'myfirstmodule$coachworkid', 
"child_column_name" = 'myfirstmodule$coachworkimageid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$coachwork_coachworkimage_myfirstmodule$coachworkimage_myfirstmodule$coachwork'
 WHERE "id" = '07a8b8a2-2578-436e-b3d4-eb14060b30c1';
ALTER TABLE "myfirstmodule$coachwork_car" ALTER COLUMN "myfirstmodule$carinternalid" RENAME TO "myfirstmodule$carid";
ALTER TABLE "myfirstmodule$coachwork_car" ALTER COLUMN "myfirstmodule$coachworkinternalid" RENAME TO "myfirstmodule$coachworkid";
CREATE INDEX "idx_myfirstmodule$coachwork_car_myfirstmodule$car_myfirstmodule$coachwork" ON "myfirstmodule$coachwork_car"
	("myfirstmodule$carid","myfirstmodule$coachworkid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.Coachwork_Car', 
"table_name" = 'myfirstmodule$coachwork_car', 
"parent_entity_id" = '7ac441f9-93e9-40ea-ab1d-6da1bb9d5aeb', 
"child_entity_id" = '6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
"parent_column_name" = 'myfirstmodule$coachworkid', 
"child_column_name" = 'myfirstmodule$carid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$coachwork_car_myfirstmodule$car_myfirstmodule$coachwork'
 WHERE "id" = 'bb916860-25a5-4341-8dd0-820c5cb1312c';
ALTER TABLE "myfirstmodule$selection_car" ALTER COLUMN "myfirstmodule$carinternalid" RENAME TO "myfirstmodule$carid";
CREATE INDEX "idx_myfirstmodule$selection_car_myfirstmodule$car_myfirstmodule$flowentity" ON "myfirstmodule$selection_car"
	("myfirstmodule$carid","myfirstmodule$flowentityid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.Selection_Car', 
"table_name" = 'myfirstmodule$selection_car', 
"parent_entity_id" = 'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
"child_entity_id" = '6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
"parent_column_name" = 'myfirstmodule$flowentityid', 
"child_column_name" = 'myfirstmodule$carid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$selection_car_myfirstmodule$car_myfirstmodule$flowentity'
 WHERE "id" = '36228a7e-54e0-4ae2-a005-6898b8546bbf';
ALTER TABLE "myfirstmodule$selection_coachwork" ALTER COLUMN "myfirstmodule$coachworkinternalid" RENAME TO "myfirstmodule$coachworkid";
CREATE INDEX "idx_myfirstmodule$selection_coachwork_myfirstmodule$coachwork_myfirstmodule$flowentity" ON "myfirstmodule$selection_coachwork"
	("myfirstmodule$coachworkid","myfirstmodule$flowentityid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.Selection_Coachwork', 
"table_name" = 'myfirstmodule$selection_coachwork', 
"parent_entity_id" = 'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
"child_entity_id" = '7ac441f9-93e9-40ea-ab1d-6da1bb9d5aeb', 
"parent_column_name" = 'myfirstmodule$flowentityid', 
"child_column_name" = 'myfirstmodule$coachworkid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$selection_coachwork_myfirstmodule$coachwork_myfirstmodule$flowentity'
 WHERE "id" = '6d138475-652f-4111-8202-233f8f68a6ae';
ALTER TABLE "myfirstmodule$selection_carcolor" ALTER COLUMN "myfirstmodule$colorcarinternalid" RENAME TO "myfirstmodule$carcolorid";
CREATE INDEX "idx_myfirstmodule$selection_carcolor_myfirstmodule$carcolor_myfirstmodule$flowentity" ON "myfirstmodule$selection_carcolor"
	("myfirstmodule$carcolorid","myfirstmodule$flowentityid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.Selection_CarColor', 
"table_name" = 'myfirstmodule$selection_carcolor', 
"parent_entity_id" = 'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
"child_entity_id" = '53af1bed-1580-4d77-afaa-599de53d4c79', 
"parent_column_name" = 'myfirstmodule$flowentityid', 
"child_column_name" = 'myfirstmodule$carcolorid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$selection_carcolor_myfirstmodule$carcolor_myfirstmodule$flowentity'
 WHERE "id" = '5a995bee-1d97-4540-af70-92305531023c';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.0.7', 
"lastsyncdate" = '20150311 10:17:10';
