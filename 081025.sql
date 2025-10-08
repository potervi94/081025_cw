--СТВОРЕННЯ
--CREATE DATABASE ANIMALS

CREATE TABLE ANIMALS (
  ANIMAL_ID SERIAL PRIMARY KEY,
  BREED VARCHAR(20),
  AGE INT,
  COLOR VARCHAR(20)
);

INSERT INTO ANIMALS (
  BREED,
  AGE,
  COLOR
)
VALUES
  ('ХОМ’ЯК', 1, 'БІЛИЙ'),
  ('ПАПУГА', 3, 'ЗЕЛЕНИЙ'),
  ('КРОЛИК', 2, 'СІРИЙ'),
  ('КІТ', 5, 'ЧОРНИЙ'),
  ('ПЕС', 7, 'БІЛО-ЧОРНИЙ'),
  ('ЇЖАК', 4, 'КОРИЧНЕВИЙ'),
  ('КОЗА', 6, 'БІЛА'),
  ('КУРКА', 2, 'РУДА'),
  ('ІГУАНА', 1, 'ЗЕЛЕНА'),
  ('МИША', 1, 'СІРА');