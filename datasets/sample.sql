BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','');
INSERT INTO "Account" VALUES(2,'XYZ Foods','');
INSERT INTO "Account" VALUES(3,'ABC Foods','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2023-06-30','Non-refrigerated','Pasta','1');
INSERT INTO "Delivery_Item__c" VALUES(2,'2022-12-31','Non-refrigerated','Tomatoes','1');
INSERT INTO "Delivery_Item__c" VALUES(3,'2023-01-31','Refrigerated','Cheese','1');
INSERT INTO "Delivery_Item__c" VALUES(4,'2023-04-30','Non-refrigerated','Pepsi','2');
INSERT INTO "Delivery_Item__c" VALUES(5,'2022-12-24','Refrigerated','Chicken','2');
INSERT INTO "Delivery_Item__c" VALUES(6,'','Non-refrigerated','Rice','2');
INSERT INTO "Delivery_Item__c" VALUES(7,'','Frozen','Ice Cream','2');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2022-12-21','Scheduled','2');
INSERT INTO "Delivery__c" VALUES(2,'2022-12-13','Scheduled','3');
COMMIT;
