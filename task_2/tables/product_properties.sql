BEGIN;

-- CREATE TABLE "product_properties" ---------------------------
CREATE TABLE "public"."product_properties" (
	"product_spec_id_f_key" Integer,
	"product_properties_id" Integer NOT NULL,
	"unit_properties_id_f_key" Integer,
	PRIMARY KEY ( "product_properties_id" ) );
 ;
-- -------------------------------------------------------------

-- CREATE INDEX "index_unit_properties_id_f_key" ---------------
CREATE INDEX "index_unit_properties_id_f_key" ON "public"."product_properties" USING btree( "unit_properties_id_f_key" );
-- -------------------------------------------------------------

-- CREATE INDEX "index_product_spec_id_f_key" ------------------
CREATE INDEX "index_product_spec_id_f_key" ON "public"."product_properties" USING btree( "product_spec_id_f_key" );
-- -------------------------------------------------------------

COMMIT;
