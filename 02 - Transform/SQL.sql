-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/I8hZjF
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "confirmed" (
    "country_name" VARCHAR   NOT NULL,
    "date" DATE   NOT NULL,
    "number_of_confirmed" INT   NOT NULL,
    CONSTRAINT "pk_confirmed" PRIMARY KEY (
        "country_name"
     )
);

CREATE TABLE "recovered" (
    "country_name" VARCHAR   NOT NULL,
    "date" DATE   NOT NULL,
    "number_of_recovered" INT   NOT NULL
);

CREATE TABLE "death" (
    "country_name" VARCHAR   NOT NULL,
    "date" DATE   NOT NULL,
    "number_of_deaths" INT   NOT NULL
);

ALTER TABLE "recovered" ADD CONSTRAINT "fk_recovered_country_name_date" FOREIGN KEY("country_name", "date")
REFERENCES "confirmed" ("country_name", "date");

ALTER TABLE "death" ADD CONSTRAINT "fk_death_country_name_date" FOREIGN KEY("country_name", "date")
REFERENCES "confirmed" ("country_name", "date");

