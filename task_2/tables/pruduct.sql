BEGIN;

-- CREATE TABLE "product" --------------------------------------
CREATE TABLE "public"."product" (
	"product_id" Integer NOT NULL,
	"name_ru" Character Varying NOT NULL,
	"name_eng" Character Varying,
	"brand_f_key" Integer,
	"category_f_id" Integer,
	"status_f_key" Integer,
	"rating_id_f_key" Integer,
	"product_properties_id_f_key" Integer,
	PRIMARY KEY ( "product_id" ),
	CONSTRAINT "unique_product_product_id" UNIQUE( "product_id" ) );
 ;
-- -------------------------------------------------------------

-- CREATE INDEX "index_name_brand_category" --------------------
CREATE INDEX "index_name_brand_category" ON "public"."product" USING btree( "name_ru" Asc NULLS Last, "brand_f_key" Asc NULLS Last, "category_f_id" Asc NULLS Last );
-- -------------------------------------------------------------

-- CREATE INDEX "index_status_f_key" ---------------------------
CREATE INDEX "index_status_f_key" ON "public"."product" USING btree( "status_f_key" );
-- -------------------------------------------------------------

-- CREATE INDEX "index_rating_id_f_key" ------------------------
CREATE INDEX "index_rating_id_f_key" ON "public"."product" USING btree( "rating_id_f_key" );
-- -------------------------------------------------------------

-- CREATE INDEX "index_properties_id_f_key" --------------------
CREATE INDEX "index_properties_id_f_key" ON "public"."product" USING btree( "product_properties_id_f_key" );
-- -------------------------------------------------------------

-- CREATE FOREIGN KEYS for "product" table ------------------------
alter table product
    add constraint brand_f_key
        foreign key (brand_f_key) references brand;

alter table product
    add constraint category_f_id
        foreign key (category_f_id) references category;

alter table product
    add constraint product_properties_id_f_key
        foreign key (product_properties_id_f_key) references product_properties(product_properties_id);

alter table product
    add constraint rating_id_f_key
        foreign key (rating_id_f_key) references rating;

alter table product
    add constraint status_f_key
        foreign key (status_f_key) references status;
-- -------------------------------------------------------------

COMMIT;