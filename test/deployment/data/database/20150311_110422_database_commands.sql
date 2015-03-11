DROP INDEX "idx_myfirstmodule$selection_car_myfirstmodule$car_myfirstmodule$flowentity";
DROP INDEX "idx_myfirstmodule$selection_coachwork_myfirstmodule$coachwork_myfirstmodule$flowentity";
DROP INDEX "idx_myfirstmodule$flowentity_account_administration$account_myfirstmodule$flowentity";
DROP INDEX "idx_myfirstmodule$selection_carcolor_myfirstmodule$carcolor_myfirstmodule$flowentity";
ALTER TABLE "myfirstmodule$flowentity" RENAME TO "myfirstmodule$appflow";
ALTER TABLE "myfirstmodule$flowentity_account" RENAME TO "myfirstmodule$appflow_account";
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'MyFirstModule.AppFlow', 
"table_name" = 'myfirstmodule$appflow', 
"superentity_id" = NULL
 WHERE "id" = 'e2776d6d-5a8f-4bf5-8898-281cce5d1842';
ALTER TABLE "myfirstmodule$selection_car" ALTER COLUMN "myfirstmodule$flowentityid" RENAME TO "myfirstmodule$appflowid";
CREATE INDEX "idx_myfirstmodule$selection_car_myfirstmodule$car_myfirstmodule$appflow" ON "myfirstmodule$selection_car"
	("myfirstmodule$carid","myfirstmodule$appflowid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.Selection_Car', 
"table_name" = 'myfirstmodule$selection_car', 
"parent_entity_id" = 'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
"child_entity_id" = '6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
"parent_column_name" = 'myfirstmodule$appflowid', 
"child_column_name" = 'myfirstmodule$carid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$selection_car_myfirstmodule$car_myfirstmodule$appflow'
 WHERE "id" = '36228a7e-54e0-4ae2-a005-6898b8546bbf';
ALTER TABLE "myfirstmodule$selection_coachwork" ALTER COLUMN "myfirstmodule$flowentityid" RENAME TO "myfirstmodule$appflowid";
CREATE INDEX "idx_myfirstmodule$selection_coachwork_myfirstmodule$coachwork_myfirstmodule$appflow" ON "myfirstmodule$selection_coachwork"
	("myfirstmodule$coachworkid","myfirstmodule$appflowid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.Selection_Coachwork', 
"table_name" = 'myfirstmodule$selection_coachwork', 
"parent_entity_id" = 'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
"child_entity_id" = '7ac441f9-93e9-40ea-ab1d-6da1bb9d5aeb', 
"parent_column_name" = 'myfirstmodule$appflowid', 
"child_column_name" = 'myfirstmodule$coachworkid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$selection_coachwork_myfirstmodule$coachwork_myfirstmodule$appflow'
 WHERE "id" = '6d138475-652f-4111-8202-233f8f68a6ae';
ALTER TABLE "myfirstmodule$appflow_account" ALTER COLUMN "myfirstmodule$flowentityid" RENAME TO "myfirstmodule$appflowid";
CREATE INDEX "idx_myfirstmodule$appflow_account_administration$account_myfirstmodule$appflow" ON "myfirstmodule$appflow_account"
	("administration$accountid","myfirstmodule$appflowid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.AppFlow_Account', 
"table_name" = 'myfirstmodule$appflow_account', 
"parent_entity_id" = 'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
"child_entity_id" = '3078a23e-13b2-4a9b-84e4-2881fdee53c6', 
"parent_column_name" = 'myfirstmodule$appflowid', 
"child_column_name" = 'administration$accountid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$appflow_account_administration$account_myfirstmodule$appflow'
 WHERE "id" = 'f7dde7a4-7e4d-4932-a6ed-34346c7a4814';
ALTER TABLE "myfirstmodule$selection_carcolor" ALTER COLUMN "myfirstmodule$flowentityid" RENAME TO "myfirstmodule$appflowid";
CREATE INDEX "idx_myfirstmodule$selection_carcolor_myfirstmodule$carcolor_myfirstmodule$appflow" ON "myfirstmodule$selection_carcolor"
	("myfirstmodule$carcolorid","myfirstmodule$appflowid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.Selection_CarColor', 
"table_name" = 'myfirstmodule$selection_carcolor', 
"parent_entity_id" = 'e2776d6d-5a8f-4bf5-8898-281cce5d1842', 
"child_entity_id" = '53af1bed-1580-4d77-afaa-599de53d4c79', 
"parent_column_name" = 'myfirstmodule$appflowid', 
"child_column_name" = 'myfirstmodule$carcolorid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$selection_carcolor_myfirstmodule$carcolor_myfirstmodule$appflow'
 WHERE "id" = '5a995bee-1d97-4540-af70-92305531023c';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.0.7', 
"lastsyncdate" = '20150311 11:04:21';
