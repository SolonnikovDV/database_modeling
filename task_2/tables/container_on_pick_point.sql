BEGIN;

-- CREATE TABLE "containers_on_pick_point" ---------------------
CREATE TABLE "public"."containers_on_pick_point" (
	"container_properties_id_f_key" Integer NOT NULL,
	"containers_count" Integer,
	"containers_total_volume" Double Precision NOT NULL );
 ;
-- -------------------------------------------------------------

-- CREATE INDEX "index_container_properties_id_f_key" ----------
CREATE INDEX "index_container_properties_id_f_key" ON "public"."containers_on_pick_point" USING btree( "container_properties_id_f_key" );
-- -------------------------------------------------------------

COMMIT;
