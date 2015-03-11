DROP INDEX "idx_myfirstmodule$carinternal_account_administration$account_myfirstmodule$carinternal";
ALTER TABLE "myfirstmodule$carinternal_account" RENAME TO "f0b3ab29e35f40f6a20bf0da295dfc5f";
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '953415d2-5802-4fa2-85a0-d49074ba6069';
DROP TABLE "f0b3ab29e35f40f6a20bf0da295dfc5f";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.0.7', 
"lastsyncdate" = '20150306 11:39:32';
