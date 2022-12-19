BEGIN;

-- CREATE TABLE "individual_attribute" -------------------------
CREATE TABLE "public"."individual_attribute" ( 
	"agent_type_f_key" Integer NOT NULL,
	"first_name" Character Varying NOT NULL,
	"last_name" Character Varying NOT NULL,
	"inn" Character Varying NOT NULL,
	"location_id_f_key" Integer NOT NULL );
 ;
-- -------------------------------------------------------------

-- CREATE INDEX "index_location_id_f_key1" ---------------------
-- search agent location
CREATE INDEX "index_location_id_f_key" ON "public"."individual_attribute" USING btree( "location_id_f_key" );
-- -------------------------------------------------------------

-- CREATE INDEX "index_inn" ------------------------------------
--search agent attribute
CREATE INDEX "index_inn" ON "public"."individual_attribute" USING btree( "inn" );
-- -------------------------------------------------------------

-- CREATE INDEX "index_agent_type_f_key" -----------------------
--find type agent: company / individual
CREATE INDEX "index_agent_type_f_key" ON "public"."individual_attribute" USING btree( "agent_type_f_key" );
-- -------------------------------------------------------------

COMMIT;
