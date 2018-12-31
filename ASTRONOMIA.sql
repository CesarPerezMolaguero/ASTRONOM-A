CREATE DATABASE ASTRONOMIA;

CREATE TABLE ESTRELLAS(
    Nombre VARCHAR2(25) CONSTRAINT estrellas_nombre_pk PRIMARY KEY
);
CREATE TABLE PLANETAS(
    Nombre_P VARCHAR2(25) CONSTRAINT planetas_nombreP_pk PRIMARY KEY,
    Tiempo_rotacion NUMBER,
    Distancia_sol NUMBER
);
CREATE TABLE Orbitar_1 (
    Nombre VARCHAR2(25),
    Nombre_P VARCHAR2(25),
    CONSTRAINT orbitar1_pk PRIMARY KEY (Nombre, Nombre_P),
    CONSTRAINT orbitar1_fk1 FOREIGN KEY (Nombre) REFERENCES ESTRELLAS,
    CONSTRAINT orbitar1_fk2 FOREIGN KEY (Nombre_P) REFERENCES PLANETAS
);
CREATE TABLE COMETAS(
    Nombre_C VARCHAR2(25) CONSTRAINT cometas_nombreC_pk PRIMARY KEY,
    Tiempo_rotacion NUMBER,
    Distancia_Planeta NUMBER
);
CREATE TABLE Orbitar_4 (
    Nombre_C VARCHAR2(25),
    Nombre_P VARCHAR2(25),
    CONSTRAINT orbitar4_pk PRIMARY KEY (Nombre_C, Nombre_P),
    CONSTRAINT orbitar4_fk1 FOREIGN KEY (Nombre_C) REFERENCES COMETAS,
    CONSTRAINT orbitar4_fk2 FOREIGN KEY (Nombre_P) REFERENCES PLANETAS
);
CREATE TABLE ASTEROIDES(
    Nombre_A VARCHAR2(25) CONSTRAINT asteroides_nombreA_pk PRIMARY KEY,
    Tiempo_rotacion NUMBER,
    Distancia_Planeta NUMBER
);
CREATE TABLE Orbitar_3 (
    Nombre_A VARCHAR2(25),
    Nombre_P VARCHAR2(25),
    CONSTRAINT orbitar3_pk PRIMARY KEY (Nombre_A, Nombre_P),
    CONSTRAINT orbitar3_fk1 FOREIGN KEY (Nombre_A) REFERENCES ASTEROIDES,
    CONSTRAINT orbitar3_fk2 FOREIGN KEY (Nombre_P) REFERENCES PLANETAS
);
CREATE TABLE AGENCIAS(
 Nombre_agencia VARCHAR2(15) CONSTRAINT agencias_pk PRIMARY KEY
);
CREATE TABLE SATELITES(
    Nombre_S VARCHAR2(25) CONSTRAINT satelites_nombreS_pk PRIMARY KEY,
    Tiempo_rotacion NUMBER,
    Distancia_Planeta NUMBER,
    Fecha_lanzamiento DATE,
    Fecha_perdida DATE,
    Nombre_agencia VARCHAR2(15) CONSTRAINT satelites_nn1 NOT NULL,
    CONSTRAINT satelites_fk1 FOREIGN KEY (Nombre_agencia)REFERENCES AGENCIAS
);
CREATE TABLE Orbitar_2 (
    Nombre_S VARCHAR2(25),
    Nombre_P VARCHAR2(25),
    CONSTRAINT orbitar2_pk PRIMARY KEY (Nombre_S, Nombre_P),
    CONSTRAINT orbitar2_fk1 FOREIGN KEY (Nombre_S) REFERENCES SATELITES,
    CONSTRAINT orbitar2_fk2 FOREIGN KEY (Nombre_P) REFERENCES PLANETAS
);
CREATE TABLE FOTOGRAFIAS(
    Id_fotografias VARCHAR2(15) CONSTRAINT fotografias_id_pk PRIMARY KEY,
    Nombre_objeto VARCHAR2(25),
    Nombre_S VARCHAR2(25) CONSTRAINT foto_nn1 NOT NULL,
    CONSTRAINT foto_fk1 FOREIGN KEY (Nombre_S) REFERENCES SATELITES
);


