BEGIN;

-- CREATE TABLE "company_attribute" ----------------------------
CREATE TABLE "public"."company_attribute" (
	"agent_type_f_key" Integer NOT NULL,
	"company_name_short" Character Varying NOT NULL,
	"company_name_full" Character Varying NOT NULL,
	"inn" Character Varying NOT NULL,
	"location_id_f_key" Integer NOT NULL );
 ;
-- -------------------------------------------------------------

-- CREATE INDEX "index_location_id_f_key2" ---------------------
CREATE INDEX "index_location_id_f_key2" ON "public"."company_attribute" USING btree( "location_id_f_key" );
-- -------------------------------------------------------------

-- CREATE INDEX "index_agent_type_f_key1" ----------------------
CREATE INDEX "index_agent_type_f_key1" ON "public"."company_attribute" USING btree( "agent_type_f_key" );
-- -------------------------------------------------------------

COMMIT;
