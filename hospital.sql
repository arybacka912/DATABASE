--------------------------------------------------------
--  File created - Thursday-January-03-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DEPARTMENTS
--------------------------------------------------------

  CREATE TABLE "DVF"."DEPARTMENTS" 
   (	"ID_DEPARTMENT" NUMBER(*,0), 
	"NAME" NVARCHAR2(50), 
	"ID_MANAGER" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."DEPARTMENTS"."ID_DEPARTMENT" IS 'id oddzialu';
   COMMENT ON COLUMN "DVF"."DEPARTMENTS"."NAME" IS 'nazwa oddzialu';
   COMMENT ON COLUMN "DVF"."DEPARTMENTS"."ID_MANAGER" IS 'id szefa oddzialu';
--------------------------------------------------------
--  DDL for Table DOCTORS
--------------------------------------------------------

  CREATE TABLE "DVF"."DOCTORS" 
   (	"ID_DOCTOR" NUMBER(*,0), 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(50 BYTE), 
	"ID_MANAGER" NUMBER(*,0), 
	"SPECIALITY" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."DOCTORS"."ID_DOCTOR" IS 'id doctor';
   COMMENT ON COLUMN "DVF"."DOCTORS"."FIRST_NAME" IS 'imie doktorka';
   COMMENT ON COLUMN "DVF"."DOCTORS"."LAST_NAME" IS 'nazwisko doktorka';
   COMMENT ON COLUMN "DVF"."DOCTORS"."ID_MANAGER" IS 'id MANAGER
';
   COMMENT ON COLUMN "DVF"."DOCTORS"."SPECIALITY" IS 'specjalizacja doktorka';
--------------------------------------------------------
--  DDL for Table HOLIDAYS
--------------------------------------------------------

  CREATE TABLE "DVF"."HOLIDAYS" 
   (	"ID_HOLIDAY" NUMBER(*,0), 
	"ID_DOCTOR" NUMBER(*,0), 
	"TYPE" VARCHAR2(50 BYTE), 
	"BEGINNING_DATE" DATE, 
	"END_DATE" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."HOLIDAYS"."ID_HOLIDAY" IS 'id urlopu';
   COMMENT ON COLUMN "DVF"."HOLIDAYS"."ID_DOCTOR" IS 'id doktora ktory bierze urlop';
   COMMENT ON COLUMN "DVF"."HOLIDAYS"."TYPE" IS 'rodzaj urlopu';
   COMMENT ON COLUMN "DVF"."HOLIDAYS"."BEGINNING_DATE" IS 'data rozpoczecia urlopu';
   COMMENT ON COLUMN "DVF"."HOLIDAYS"."END_DATE" IS 'data zakonczenia urlopu';
--------------------------------------------------------
--  DDL for Table PATIENTS
--------------------------------------------------------

  CREATE TABLE "DVF"."PATIENTS" 
   (	"ID_PATIENT" NUMBER(*,0), 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(100 BYTE), 
	"STREET" VARCHAR2(100 BYTE), 
	"HOUSE_NO" VARCHAR2(20 BYTE), 
	"FLAT_NO" VARCHAR2(20 BYTE), 
	"POSTAL_CODE" VARCHAR2(20 BYTE), 
	"CITY" VARCHAR2(20 BYTE), 
	"COUNTRY" VARCHAR2(20 BYTE), 
	"PESEL" VARCHAR2(11 BYTE), 
	"ID_CARD_NO" VARCHAR2(50 BYTE), 
	"ID_BED" NUMBER(*,0), 
	"ID_ROOM" NUMBER(*,0), 
	"ID_DOCTOR" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."PATIENTS"."ID_PATIENT" IS 'Id pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."FIRST_NAME" IS 'imie pacjenta
';
   COMMENT ON COLUMN "DVF"."PATIENTS"."LAST_NAME" IS 'nazwisko pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."STREET" IS 'adres (ulica) pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."HOUSE_NO" IS 'numer domu pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."FLAT_NO" IS 'numer mieszkania pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."POSTAL_CODE" IS 'kod pocztowy pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."CITY" IS 'miasto pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."COUNTRY" IS 'kraj pochodzenia pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."PESEL" IS 'pesel pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."ID_CARD_NO" IS 'nr paszportu pacjenta zagranicznego';
   COMMENT ON COLUMN "DVF"."PATIENTS"."ID_BED" IS 'id lozka pacjenta w szpitalu';
   COMMENT ON COLUMN "DVF"."PATIENTS"."ID_ROOM" IS 'id sali chorych w ktorej lezy pacjent';
   COMMENT ON COLUMN "DVF"."PATIENTS"."ID_DOCTOR" IS 'id lekarza prowadzacego pacjenta';
--------------------------------------------------------
--  DDL for Table ROOMS
--------------------------------------------------------

  CREATE TABLE "DVF"."ROOMS" 
   (	"ID_ROOM" NUMBER(*,0), 
	"BEDS_NO" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."ROOMS"."ID_ROOM" IS 'id pokoju';
   COMMENT ON COLUMN "DVF"."ROOMS"."BEDS_NO" IS 'liczba lozek w pokoju';
--------------------------------------------------------
--  DDL for Table SURGERIES
--------------------------------------------------------

  CREATE TABLE "DVF"."SURGERIES" 
   (	"ID_SURGERY" NUMBER(*,0), 
	"ID_PATIENT" NUMBER(*,0), 
	"ID_DOCTOR" NUMBER(*,0), 
	"TYPE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."SURGERIES"."ID_SURGERY" IS 'id operacji';
   COMMENT ON COLUMN "DVF"."SURGERIES"."ID_PATIENT" IS 'id operowanego pacjenta';
   COMMENT ON COLUMN "DVF"."SURGERIES"."ID_DOCTOR" IS 'id lekarza operujacego';
   COMMENT ON COLUMN "DVF"."SURGERIES"."TYPE" IS 'rodzaj operacji';
--------------------------------------------------------
--  DDL for Table SURGERY_ROOMS
--------------------------------------------------------

  CREATE TABLE "DVF"."SURGERY_ROOMS" 
   (	"ID_SURGERY_ROOM" NUMBER(*,0), 
	"START_TIME" DATE, 
	"END_TIME" DATE, 
	"ID_DOCTOR" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."SURGERY_ROOMS"."ID_SURGERY_ROOM" IS 'id sali operacyjnej';
   COMMENT ON COLUMN "DVF"."SURGERY_ROOMS"."START_TIME" IS 'data startowa rezerwacji sali operacyjnej';
   COMMENT ON COLUMN "DVF"."SURGERY_ROOMS"."END_TIME" IS 'data konca operacji pacjenta';
   COMMENT ON COLUMN "DVF"."SURGERY_ROOMS"."ID_DOCTOR" IS 'id lekarza prowadzacego';
REM INSERTING into DVF.DEPARTMENTS
SET DEFINE OFF;
REM INSERTING into DVF.DOCTORS
SET DEFINE OFF;
REM INSERTING into DVF.HOLIDAYS
SET DEFINE OFF;
REM INSERTING into DVF.PATIENTS
SET DEFINE OFF;
REM INSERTING into DVF.ROOMS
SET DEFINE OFF;
REM INSERTING into DVF.SURGERIES
SET DEFINE OFF;
REM INSERTING into DVF.SURGERY_ROOMS
SET DEFINE OFF;
