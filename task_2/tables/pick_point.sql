BEGIN;
--
--CHECK: current_capacity = (total_capacity - capacity_in_stock.container_volume)
--
-- CREATE TABLE "pick_point" -----------------------------------
CREATE TABLE "public"."pick_point" (
	"location_id_f_key" Integer NOT NULL,
	"pick_point_id" Integer NOT NULL,
	"current_capacity" Double Precision NOT NULL,
	"unit_properties_id_f_key" Integer NOT NULL,
	"total_capacity" Double Precision NOT NULL,
	PRIMARY KEY ( "pick_point_id" ) );
 ;
-- -------------------------------------------------------------

-- CREATE INDEX "index_current_capacity" -----------------------
CREATE INDEX "index_current_capacity" ON "public"."pick_point" USING btree( "current_capacity" );
-- -------------------------------------------------------------

-- CREATE INDEX "index_location_id_f_key" ----------------------
CREATE INDEX "index_location_id_f_key" ON "public"."pick_point" USING btree( "location_id_f_key" );
-- -------------------------------------------------------------

COMMIT;
