-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/I8hZjF
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/I8hZjF
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
DROP TABLE IF EXISTS "confirmed";
DROP TABLE IF EXISTS "recovered";
DROP TABLE IF EXISTS "death";

CREATE TABLE "confirmed" (
    "country_name" VARCHAR   NOT NULL,
    "date" DATE   NOT NULL,
    "accumulated_confirmed" INT   NOT NULL,
    "increase_of_confirmed" INT   NOT NULL
);

CREATE TABLE "recovered" (
    "country_name" VARCHAR   NOT NULL,
    "date" DATE   NOT NULL,
    "accumulated_recovered" INT   NOT NULL,
    "increase_of_recovered" INT   NOT NULL
);

CREATE TABLE "death" (
    "country_name" VARCHAR   NOT NULL,
    "date" DATE   NOT NULL,
    "accumulated_death" INT   NOT NULL,
    "increase_of_death" INT   NOT NULL
);

-- Sanity check, all of the same length
SELECT COUNT(*) from recovered;
SELECT COUNT(*) FROM death;
SELECT COUNT(*) FROM confirmed;




-- This Doen't work
-- ALTER TABLE "recovered" ADD CONSTRAINT "fk_recovered_country_name_date" FOREIGN KEY("country_name", "date")
-- REFERENCES "confirmed" ("country_name", "date");

-- ALTER TABLE "death" ADD CONSTRAINT "fk_death_country_name_date" FOREIGN KEY("country_name", "date")
-- REFERENCES "confirmed" ("country_name", "date");
-- This Doen't work
