BEGIN;

-- CREATE TABLE "supply_order" ---------------------------------
CREATE TABLE "public"."supply_order" (
	"supply_order_id" Integer NOT NULL,
	"vendor_id_f_key" Integer NOT NULL,
	"product_name" Character Varying NOT NULL,
	"price_id_f_key" Integer NOT NULL,
	"order_date" Timestamp With Time Zone NOT NULL,
	"unit_properties_f_key" Integer NOT NULL,
	"order_count" Double Precision NOT NULL,
	PRIMARY KEY ( "supply_order_id" ),
	CONSTRAINT "check_order_count" CHECK(order_count >= 0),
	CONSTRAINT "check_order_date" CHECK(order_date >= '2022-12-19 00:00:00'::timestamp) );
 ;
-- -------------------------------------------------------------

-- CREATE INDEX "index_order_date" -----------------------------
CREATE INDEX "index_order_date" ON "public"."supply_order" USING btree( "order_date" );
-- -------------------------------------------------------------

-- CREATE INDEX "index_product_name" ---------------------------
CREATE INDEX "index_product_name" ON "public"."supply_order" USING btree( "product_name" );
-- -------------------------------------------------------------

-- CREATE INDEX "index_vendor_id_f_key" ------------------------
CREATE INDEX "index_vendor_id_f_key" ON "public"."supply_order" USING btree( "vendor_id_f_key" );
-- -------------------------------------------------------------

COMMIT;
