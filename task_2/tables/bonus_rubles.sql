BEGIN;

-- CREATE TABLE "bonus_rubles" ---------------------------------
CREATE TABLE "public"."bonus_rubles" (
	"product_Id_f_key" Integer,
	"total_bonus" Money,
	"breakdown_id_f_key" Integer,
	"loyality_breakdown_id_f_key" Integer,
	CONSTRAINT "unique_bonus_rubles_loyality_breakdown_id_f_key" UNIQUE( "loyality_breakdown_id_f_key" ),
	CONSTRAINT "check_bonus_rubles_total_bonus" CHECK(total_bonus => 0) );
 ;
-- -------------------------------------------------------------

-- CHANGE "COMMENT" OF "FIELD "loyality_breakdown_id_f_key" ----
COMMENT ON COLUMN "public"."bonus_rubles"."loyality_breakdown_id_f_key" IS 'percent';
-- -------------------------------------------------------------

-- CREATE INDEX "index_total_bonus" ----------------------------
--csearch by bonus value
CREATE INDEX "index_total_bonus" ON "public"."bonus_rubles" USING btree( "total_bonus" );
-- -------------------------------------------------------------

COMMIT;
