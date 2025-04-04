-- Cambia a tu usuario de trabajo
ALTER SESSION SET CURRENT_SCHEMA=hr;

-- Crear tabla DOCENTE
CREATE TABLE docente (
  id         NUMBER PRIMARY KEY,
  nombre     VARCHAR2(100) NOT NULL,
  documento  VARCHAR2(20) NOT NULL,
  correo     VARCHAR2(100) NOT NULL
);

-- Crear secuencia para DOCENTE
CREATE SEQUENCE docente_seq START WITH 1 INCREMENT BY 1;

-- Crear tabla CURSO
CREATE TABLE curso (
  id            NUMBER PRIMARY KEY,
  nombre        VARCHAR2(100) NOT NULL,
  descripcion   VARCHAR2(255),
  duracion      NUMBER NOT NULL,
  precio        NUMBER(10, 2) NOT NULL,
  fecha_inicio  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  docente_id    NUMBER,
  CONSTRAINT fk_docente
    FOREIGN KEY (docente_id)
    REFERENCES docente(id)
    ON DELETE SET NULL
);

-- Crear secuencia para CURSO
CREATE SEQUENCE curso_seq START WITH 1 INCREMENT BY 1;
