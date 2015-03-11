DROP INDEX "idx_myfirstmodule$carinternal_carcoachcolorimages_myfirstmodule$carinternalimage_myfirstmodule$carinternal";
ALTER TABLE "myfirstmodule$carinternal_carcoachcolorimages" RENAME TO "myfirstmodule$carinternal_carinternalimage";
CREATE INDEX "idx_myfirstmodule$carinternal_carinternalimage_myfirstmodule$carinternalimage_myfirstmodule$carinternal" ON "myfirstmodule$carinternal_carinternalimage"
	("myfirstmodule$carinternalimageid","myfirstmodule$carinternalid");
UPDATE "mendixsystem$association"
 SET "association_name" = 'MyFirstModule.CarInternal_CarInternalImage', 
"table_name" = 'myfirstmodule$carinternal_carinternalimage', 
"parent_entity_id" = '6f11f3c6-9f64-42ae-ad58-5441c194fbee', 
"child_entity_id" = '23479a51-1e57-4dc9-a2d6-b368e6b0ee6e', 
"parent_column_name" = 'myfirstmodule$carinternalid', 
"child_column_name" = 'myfirstmodule$carinternalimageid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_myfirstmodule$carinternal_carinternalimage_myfirstmodule$carinternalimage_myfirstmodule$carinternal'
 WHERE "id" = 'b7cd5e66-5931-4369-8eec-167d910bd7a4';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.0.7', 
"lastsyncdate" = '20150306 11:56:20';
