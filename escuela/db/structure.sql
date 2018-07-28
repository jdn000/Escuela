CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "notas" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "rut_al" varchar NOT NULL, "nom_asig" varchar NOT NULL, "periodo" varchar NOT NULL, "N1" float, "N2" float, "N3" float, "N4" float, "N5" float, "N6" float, "N7" float, "N8" float, "N9" float, "N10" float, "N11" float, "N12" float, "N13" float, "N14" float, "N15" float, "N16" float, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_Notas_on_nom_asig" ON "notas" ("nom_asig");
CREATE INDEX "index_Notas_on_rut_al" ON "notas" ("rut_al");
CREATE TABLE "nota" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "no" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "rut_al" varchar NOT NULL, "nom_asig" varchar NOT NULL, "periodo" varchar NOT NULL, "N1" float, "N2" float, "N3" float, "N4" float, "N5" float, "N6" float, "N7" float, "N8" float, "N9" float, "N10" float, "N11" float, "N12" float, "N13" float, "N14" float, "N15" float, "N16" float, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_No_on_nom_asig" ON "no" ("nom_asig");
CREATE INDEX "index_No_on_rut_al" ON "no" ("rut_al");
CREATE TABLE "alumnos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "rut" varchar NOT NULL, "nombre" varchar NOT NULL, "ap_pat" varchar NOT NULL, "ap_mat" varchar NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "curso" varchar);
CREATE UNIQUE INDEX "index_Alumnos_on_rut" ON "alumnos" ("rut");
CREATE TABLE "asignaturas" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nombre_asignatura" varchar NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE UNIQUE INDEX "index_Asignaturas_on_nombre_asignatura" ON "asignaturas" ("nombre_asignatura");
CREATE TABLE "nos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "rut_al" varchar NOT NULL, "nom_asig" varchar NOT NULL, "periodo" varchar NOT NULL, "N1" float, "N2" float, "N3" float, "N4" float, "N5" float, "N6" float, "N7" float, "N8" float, "N9" float, "N10" float, "N11" float, "N12" float, "N13" float, "N14" float, "N15" float, "N16" float, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_Nos_on_nom_asig" ON "nos" ("nom_asig");
CREATE INDEX "index_Nos_on_rut_al" ON "nos" ("rut_al");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "password_digest" varchar, "remember_digest" varchar, "admin" boolean DEFAULT 'f', "activation_digest" varchar, "activated" boolean DEFAULT 'f', "activated_at" datetime, "reset_digest" varchar, "reset_sent_at" datetime);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
INSERT INTO "schema_migrations" (version) VALUES
('20180525214958'),
('20180530024759'),
('20180530145200'),
('20180605123850'),
('20180612022540'),
('20180612194053'),
('20180614154022'),
('20180704135100'),
('20180704135829'),
('20180704161233'),
('20180705180631'),
('20180710131739'),
('20180710132147'),
('20180711011339');


