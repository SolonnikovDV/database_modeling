BEGIN;
--
--CHECK: product_balance = product_balance + supply_order.order_count - purchase_order.order_count
--
-- CREATE TABLE "stock" ----------------------------------------
CREATE TABLE "public"."stock" (
	"stock_id" Integer NOT NULL,
	"location_f_key" Integer NOT NULL,
	"product_balance" Double Precision NOT NULL,
	"product_id_f_key" Integer NOT NULL,
	"product_name_f_key" Character Varying NOT NULL,
	"transaction_in_f_key" Integer NOT NULL,
	"transaction_out_f_key" Integer NOT NULL,
	PRIMARY KEY ( "stock_id" ),
	CONSTRAINT "unique_stock_transaction_out_f_key" UNIQUE( "transaction_out_f_key" ),
	CONSTRAINT "check_prod_balance" CHECK(product_balance >= 0) );
 ;
-- -------------------------------------------------------------

-- CREATE INDEX "index_location_f_key" -------------------------
CREATE INDEX "index_location_f_key" ON "public"."stock" USING btree( "location_f_key" );
-- -------------------------------------------------------------

-- CREATE INDEX "index_product_id_f_key" -----------------------
CREATE INDEX "index_product_id_f_key" ON "public"."stock" USING btree( "product_id_f_key" );
-- -------------------------------------------------------------

-- CREATE INDEX "index_transaction_in_f_key" -------------------
CREATE INDEX "index_transaction_in_f_key" ON "public"."stock" USING btree( "transaction_in_f_key" );
-- -------------------------------------------------------------

-- CREATE INDEX "index_product_name_f_key" ---------------------
CREATE INDEX "index_product_name_f_key" ON "public"."stock" USING btree( "product_name_f_key" );
-- -------------------------------------------------------------

COMMIT;
