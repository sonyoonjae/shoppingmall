--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "ORA_USER"."USERS" 
   (	"USER_NO" VARCHAR2(250 BYTE), 
	"USER_ID" VARCHAR2(25 BYTE), 
	"USER_PWD" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(40 BYTE), 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TRAN_REC
--------------------------------------------------------

  CREATE TABLE "ORA_USER"."TRAN_REC" 
   (	"REC_NO" NUMBER, 
	"PRICE" NUMBER, 
	"REC_DATE" DATE, 
	"USER_NO" VARCHAR2(250 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ACCOUNTS
--------------------------------------------------------

  CREATE TABLE "ORA_USER"."ACCOUNTS" 
   (	"BANK_NO" VARCHAR2(100 BYTE), 
	"BANK_ACCOUNT_NO" NUMBER, 
	"BANK_PWD" VARCHAR2(250 BYTE), 
	"USER_NO" VARCHAR2(250 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BANK_INFO
--------------------------------------------------------

  CREATE TABLE "ORA_USER"."BANK_INFO" 
   (	"BANK_NO" VARCHAR2(100 BYTE), 
	"BANK_NAME" VARCHAR2(100 BYTE), 
	"BANK_IMG" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007267
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORA_USER"."SYS_C007267" ON "ORA_USER"."USERS" ("USER_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007283
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORA_USER"."SYS_C007283" ON "ORA_USER"."ACCOUNTS" ("BANK_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "ORA_USER"."USERS" ADD PRIMARY KEY ("USER_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ORA_USER"."USERS" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "ORA_USER"."USERS" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "ORA_USER"."USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "ORA_USER"."USERS" MODIFY ("USER_PWD" NOT NULL ENABLE);
  ALTER TABLE "ORA_USER"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "ORA_USER"."USERS" MODIFY ("USER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TRAN_REC
--------------------------------------------------------

  ALTER TABLE "ORA_USER"."TRAN_REC" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "ORA_USER"."TRAN_REC" MODIFY ("REC_DATE" NOT NULL ENABLE);
  ALTER TABLE "ORA_USER"."TRAN_REC" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "ORA_USER"."TRAN_REC" MODIFY ("REC_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ACCOUNTS
--------------------------------------------------------

  ALTER TABLE "ORA_USER"."ACCOUNTS" ADD PRIMARY KEY ("BANK_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ORA_USER"."ACCOUNTS" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "ORA_USER"."ACCOUNTS" MODIFY ("BANK_PWD" NOT NULL ENABLE);
  ALTER TABLE "ORA_USER"."ACCOUNTS" MODIFY ("BANK_ACCOUNT_NO" NOT NULL ENABLE);
  ALTER TABLE "ORA_USER"."ACCOUNTS" MODIFY ("BANK_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BANK_INFO
--------------------------------------------------------

  ALTER TABLE "ORA_USER"."BANK_INFO" MODIFY ("BANK_IMG" NOT NULL ENABLE);
  ALTER TABLE "ORA_USER"."BANK_INFO" MODIFY ("BANK_NAME" NOT NULL ENABLE);
  ALTER TABLE "ORA_USER"."BANK_INFO" MODIFY ("BANK_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TRAN_REC
--------------------------------------------------------

  ALTER TABLE "ORA_USER"."TRAN_REC" ADD CONSTRAINT "T_USERNO_FK" FOREIGN KEY ("USER_NO")
	  REFERENCES "ORA_USER"."USERS" ("USER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ACCOUNTS
--------------------------------------------------------

  ALTER TABLE "ORA_USER"."ACCOUNTS" ADD CONSTRAINT "A_USERNO_FK" FOREIGN KEY ("USER_NO")
	  REFERENCES "ORA_USER"."USERS" ("USER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BANK_INFO
--------------------------------------------------------

  ALTER TABLE "ORA_USER"."BANK_INFO" ADD CONSTRAINT "B_BANKNO_FK" FOREIGN KEY ("BANK_NO")
	  REFERENCES "ORA_USER"."ACCOUNTS" ("BANK_NO") ENABLE;