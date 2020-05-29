--------------------------------------------------------
--  파일이 생성됨 - 금요일-5월-29-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BBS_BBS
--------------------------------------------------------

  CREATE TABLE "HR"."BBS_BBS" 
   (	"BBS_ID" NUMBER(30,0), 
	"BBS_TITLE" VARCHAR2(50 BYTE), 
	"USER_ID" VARCHAR2(50 BYTE), 
	"BBS_DATE" DATE DEFAULT SYSDATE, 
	"BBS_CONTENT" VARCHAR2(2048 BYTE), 
	"BBS_AVAILABLE" NUMBER(5,0), 
	"FILE_NO" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BBS_FILE
--------------------------------------------------------

  CREATE TABLE "HR"."BBS_FILE" 
   (	"FILE_NAME" VARCHAR2(200 BYTE), 
	"FILE_REAL_NAME" VARCHAR2(200 BYTE), 
	"USER_ID" VARCHAR2(50 BYTE), 
	"REGISTERED_DATE" DATE DEFAULT SYSDATE, 
	"FILE_NO" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BBS_USER
--------------------------------------------------------

  CREATE TABLE "HR"."BBS_USER" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"USER_PASSWORD" VARCHAR2(256 BYTE), 
	"USER_NAME" VARCHAR2(50 BYTE), 
	"USER_GENDER" VARCHAR2(20 BYTE), 
	"USER_EMAIL" VARCHAR2(50 BYTE), 
	"REGISTERED_DATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.BBS_BBS
SET DEFINE OFF;
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (46,'HIDFD','dahun111',to_date('20/05/14 09:36:17','RR/MM/DD HH24:MI:SS'),'<script>
 alert(''hello world'');
</script>',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (48,'ddffffff','dahun111',to_date('20/05/19 16:21:12','RR/MM/DD HH24:MI:SS'),'ddddddffffffff',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (44,'asdfasdfsdfsd','dahun111',to_date('20/05/14 09:34:55','RR/MM/DD HH24:MI:SS'),'asdfsadfasdfasdf',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (45,'asdfasdfsdfsd','dahun111',to_date('20/05/14 09:35:47','RR/MM/DD HH24:MI:SS'),'asdfsadfasdfasdf',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (47,'ddㅇㅇㅇㅇ','dahun111',to_date('20/05/15 10:45:53','RR/MM/DD HH24:MI:SS'),'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (36,'ㄹㄹㄹㄹㄹ','dahun111',to_date('20/05/13 10:49:36','RR/MM/DD HH24:MI:SS'),'ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (38,'ddddd','dahun111',to_date('20/05/14 09:02:16','RR/MM/DD HH24:MI:SS'),'<''hi></hi>


djflkjkdlafj
whie

swydf
<script>alert(''hello world'')</script>',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (10,'hh','dahun111',to_date('20/05/12 15:35:00','RR/MM/DD HH24:MI:SS'),'hhh',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (11,'hh','dahun111',to_date('20/05/12 15:35:02','RR/MM/DD HH24:MI:SS'),'hhh',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (39,'ddddd','dahun111',to_date('20/05/14 09:04:24','RR/MM/DD HH24:MI:SS'),'<''hi></hi>


djflkjkdlafj
whie

swydf
<script>alert(''hello world'')</script>',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (40,'ddddd','dahun111',to_date('20/05/14 09:08:36','RR/MM/DD HH24:MI:SS'),'<''hi></hi>


djflkjkdlafj
whie

swydf
<script>alert(''hello world'')</script>',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (41,'dfdfdf','dahun111',to_date('20/05/14 09:10:47','RR/MM/DD HH24:MI:SS'),'dfdfdfdfdffffffffffff',0,108);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (42,'dfdfdf','dahun111',to_date('20/05/14 09:11:50','RR/MM/DD HH24:MI:SS'),'ffffffffffffffffffffffffffffffffffffffffffffffffff',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (43,'dfdfdf','dahun111',to_date('20/05/14 09:11:54','RR/MM/DD HH24:MI:SS'),'dddddddddddddddddddddddddddddddddddddddddddddddddd',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (52,'dddddddddddddddddddddddddddddddddddddddddddddddddd','dahun111',to_date('20/05/27 16:35:17','RR/MM/DD HH24:MI:SS'),'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddㅍㅍㅍㅍㅍ',1,0);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (21,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:24','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (22,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:25','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (23,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:25','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (12,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 16:42:37','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (13,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 16:42:38','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (14,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 16:42:39','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (15,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 16:42:39','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (16,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 16:42:39','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (17,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 16:42:40','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (18,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 16:42:40','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (19,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 16:42:40','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (20,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 16:42:44','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (24,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:26','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (25,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:26','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (26,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:26','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (27,'새로운 타이틀입니다.ddddd','dahun111',to_date('20/05/12 20:46:27','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.ddddddd',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (28,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:27','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',1,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (29,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:27','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (30,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:27','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (31,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:28','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (32,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:28','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (33,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:28','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (34,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:29','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (35,'새로운 타이틀입니다.','dahun111',to_date('20/05/12 20:46:29','RR/MM/DD HH24:MI:SS'),'게시판 내용입니다.',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (37,'ddddd','dahun111',to_date('20/05/14 09:00:25','RR/MM/DD HH24:MI:SS'),'<''hi></hi>


djflkjkdlafj
whie

swydf
<script>alert(''hello world'')</script>',0,null);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (62,'dddddddddddddddddddddddddddddddddddddddddddddddddd','dahun111',to_date('20/05/29 11:00:17','RR/MM/DD HH24:MI:SS'),'dddddddddddddddddddddddddddddddddddddddddddddddddd',1,0);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (49,'ddddd','dahun111',to_date('20/05/20 10:47:24','RR/MM/DD HH24:MI:SS'),'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇddd',1,120);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (50,'형 머시써요','dudwnss48',to_date('20/05/20 14:57:04','RR/MM/DD HH24:MI:SS'),'형 벌써이렇게.... 존경스럽습니다!',1,138);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (57,'dddddddddddddddddddddddddddddddddddddddddddddddddd','dahun111',to_date('20/05/29 09:03:17','RR/MM/DD HH24:MI:SS'),'dddddddddddddddddddddddddddddddddddddddddddddddddd',1,0);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (58,'dddddddddddddddddddddddddddddddddddddddddddddddddd','dahun111',to_date('20/05/29 09:18:41','RR/MM/DD HH24:MI:SS'),'dddddddddddddddddddddddddddddddddddddddddddddddddd',1,0);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (59,'dddddddddddddddddddddddddddddddddddddddddddddddddd','dahun111',to_date('20/05/29 09:19:36','RR/MM/DD HH24:MI:SS'),'dddddddddddddddddddddddddddddddddddddddddddddddddd',1,0);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (60,'dddddddddddddddddddddddddddddddddddddddddddddddddd','dahun111',to_date('20/05/29 09:23:42','RR/MM/DD HH24:MI:SS'),'dddddddddddddddddddddddddddddddddddddddddddddddddd',1,451);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (63,'dddddddddddddddddddddddddddddddddddddddddddddddddd','dahun111',to_date('20/05/29 11:01:04','RR/MM/DD HH24:MI:SS'),'dfdfdfdfdfdfdfdfdfdfdfdfdfdfdf',1,0);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (65,'dddddddddddddddddddddddddddddddddddddddddddddddddd','dahun111',to_date('20/05/29 11:04:37','RR/MM/DD HH24:MI:SS'),'dddddddddddddddddddddddddddddddddddddddddddddddddd',1,0);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (66,'dddddddddddddddddddddddddddddddddddddddddddddddddd','dahun111',to_date('20/05/29 11:10:42','RR/MM/DD HH24:MI:SS'),'dddddddddddddddddddddddddddddddddddddddddddddddddd',1,0);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (67,'dddddddddddddddddddddddddddddddddddddddddddddddddd','dahun111',to_date('20/05/29 11:20:31','RR/MM/DD HH24:MI:SS'),'dddddddddddddddddddddddddddddddddddddddddddddddddd',1,0);
Insert into HR.BBS_BBS (BBS_ID,BBS_TITLE,USER_ID,BBS_DATE,BBS_CONTENT,BBS_AVAILABLE,FILE_NO) values (68,'dddddddddddddddddddddddddddddddddddddddddddddddddd','dahun111',to_date('20/05/29 11:23:11','RR/MM/DD HH24:MI:SS'),'dddddddddddddddddddddddddddddddddddddddddddddddddd',1,0);
REM INSERTING into HR.BBS_FILE
SET DEFINE OFF;
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('03c20cd6-617a-40dd-a1e3-fedafdded8a2_Penguins.jpg','Penguins.jpg','dahun111',to_date('20/05/19 15:42:50','RR/MM/DD HH24:MI:SS'),108);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('67fc3a76-764e-4aa3-bac0-e3b871edc470_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/19 16:16:18','RR/MM/DD HH24:MI:SS'),109);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('42b11d22-654a-4a60-baac-19ea7825606c_userfile','Lighthouse.jpg','dahun111',to_date('20/05/21 10:24:02','RR/MM/DD HH24:MI:SS'),195);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('a2fbe358-8df4-4348-9634-cc60044cb051_userfile','Hydrangeas.jpg','dahun111',to_date('20/05/21 10:27:28','RR/MM/DD HH24:MI:SS'),196);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('c0e3e7e8-2757-4931-8e16-68ee8ba6cb38_userfile','Koala.jpg','dahun111',to_date('20/05/21 10:28:50','RR/MM/DD HH24:MI:SS'),197);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('6ac10b33-1fab-4a15-9a17-89459035ad85_userfile','Penguins.jpg','dahun111',to_date('20/05/21 10:33:45','RR/MM/DD HH24:MI:SS'),198);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('2bac6654-3859-48bf-b08d-8a6015a56020_userfile','Koala.jpg','dahun111',to_date('20/05/21 10:36:08','RR/MM/DD HH24:MI:SS'),199);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('6aa34492-8e6a-4ee7-ba69-2913e8020927_userfile','Lighthouse.jpg','dahun111',to_date('20/05/21 10:44:27','RR/MM/DD HH24:MI:SS'),201);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('06dc3f3d-1620-4862-b512-40d75293b7f3_userfile','Koala.jpg','dahun111',to_date('20/05/21 10:46:29','RR/MM/DD HH24:MI:SS'),202);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('1397716f-f6eb-4ba1-9baf-3ec5e02165b9_userfile','Koala.jpg','dahun111',to_date('20/05/21 10:50:46','RR/MM/DD HH24:MI:SS'),203);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('a883f8d9-3169-4c3b-ba22-e650ad9a31d3_userfile','Koala.jpg','dahun111',to_date('20/05/21 10:51:18','RR/MM/DD HH24:MI:SS'),204);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('9f1a3cc7-8b29-4f8b-9591-4804861855b7_userfile','Lighthouse.jpg','dahun111',to_date('20/05/21 11:23:34','RR/MM/DD HH24:MI:SS'),205);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('5a254204-b77a-4fa1-afcd-71b808dc23c4_userfile','Koala.jpg','dahun111',to_date('20/05/21 11:28:44','RR/MM/DD HH24:MI:SS'),206);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('eaac06f1-f893-453c-911a-e463abbea200_userfile','Koala.jpg','dahun111',to_date('20/05/21 11:38:28','RR/MM/DD HH24:MI:SS'),207);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('c4befb70-8cc7-46c1-b5da-6d23838e582b_userfile','Jellyfish.jpg','dahun111',to_date('20/05/21 11:44:47','RR/MM/DD HH24:MI:SS'),208);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('2cae8d68-bb03-4900-a5a5-7ce0cd092cb3_userfile','Jellyfish.jpg','dahun111',to_date('20/05/21 11:49:32','RR/MM/DD HH24:MI:SS'),209);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('96b65905-809f-4564-b50b-2130e7844740_userfile','Lighthouse.jpg','dahun111',to_date('20/05/21 12:07:21','RR/MM/DD HH24:MI:SS'),210);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('c25e8657-f87f-46ae-9b4c-26035b6e1dd8_userfile','Koala.jpg','dahun111',to_date('20/05/21 12:09:24','RR/MM/DD HH24:MI:SS'),211);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('ff0444ee-d6a7-44fd-a890-df289fccb659_userfile','Lighthouse.jpg','dahun111',to_date('20/05/21 12:12:24','RR/MM/DD HH24:MI:SS'),212);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('3abb8416-e770-4644-b13d-cd3ebef5f19b_userfile','Koala.jpg','dahun111',to_date('20/05/21 12:14:36','RR/MM/DD HH24:MI:SS'),213);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('7847b21f-43ee-48a7-bb8a-c4802d84dbc9_userfile','Jellyfish.jpg','dahun111',to_date('20/05/21 12:22:21','RR/MM/DD HH24:MI:SS'),214);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('4d009033-b4bc-4868-bd2a-f8828fc60c70_userfile','Koala.jpg','dahun111',to_date('20/05/21 12:23:14','RR/MM/DD HH24:MI:SS'),215);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('db356291-cf0c-4bd4-a013-fd94932de91b_userfile','Jellyfish.jpg','dahun111',to_date('20/05/21 12:37:26','RR/MM/DD HH24:MI:SS'),216);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('a74cf0d5-8b87-486e-aecf-803818f04abc_userfile','Jellyfish.jpg','dahun111',to_date('20/05/21 12:42:54','RR/MM/DD HH24:MI:SS'),217);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('1fe67d2b-ef60-4c97-96bc-6bc9b3371381_userfile','Jellyfish.jpg','dahun111',to_date('20/05/21 12:44:12','RR/MM/DD HH24:MI:SS'),218);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('e1a998b0-80bf-4220-ab12-c6b28cac7e8b_userfile','Jellyfish.jpg','dahun111',to_date('20/05/21 12:45:55','RR/MM/DD HH24:MI:SS'),219);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('3fd6892a-9f8f-4fe1-bd53-8bec20830e63_userfile','Koala.jpg','dahun111',to_date('20/05/21 13:29:14','RR/MM/DD HH24:MI:SS'),220);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('d839c6bb-855f-456f-82ad-f0d9623736da_userfile','Jellyfish.jpg','dahun111',to_date('20/05/21 13:36:08','RR/MM/DD HH24:MI:SS'),222);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('7e401897-1460-432c-8409-4e88a5fb18b3_userfile','Koala.jpg','dahun111',to_date('20/05/21 13:37:46','RR/MM/DD HH24:MI:SS'),223);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('940954a7-b104-47cd-b5b6-a7cf6301c95c_userfile','Lighthouse.jpg','dahun111',to_date('20/05/21 13:38:20','RR/MM/DD HH24:MI:SS'),224);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('0cd8477d-d578-4d68-9e2c-557dc87c20e7_userfile','Hydrangeas.jpg','dahun111',to_date('20/05/21 13:44:45','RR/MM/DD HH24:MI:SS'),225);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('a2994c1c-7754-458d-be8f-4735689df679_userfile','Koala.jpg','dahun111',to_date('20/05/21 13:51:01','RR/MM/DD HH24:MI:SS'),226);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('8c6f85a8-5862-4ff9-80b4-baa31700336a_userfile','Koala.jpg','dahun111',to_date('20/05/21 13:53:07','RR/MM/DD HH24:MI:SS'),227);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('e03319a4-4d23-40a5-bc68-4e7b30f709fe_userfile','Tulips.jpg','dahun111',to_date('20/05/21 14:15:51','RR/MM/DD HH24:MI:SS'),230);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('56931968-285e-401c-a72c-df85fcb17e6b_userfile','KakaoTalk.exe','dudwnss48',to_date('20/05/21 14:53:40','RR/MM/DD HH24:MI:SS'),232);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('3790bc79-8d6b-4171-960b-d20e1d8aad1a_userfile','Hydrangeas.jpg','dahun111',to_date('20/05/28 10:58:33','RR/MM/DD HH24:MI:SS'),234);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('f33361f2-75bf-4107-89e3-8bc918e11d3d_userfile','Hydrangeas.jpg','dahun111',to_date('20/05/28 10:47:03','RR/MM/DD HH24:MI:SS'),233);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('243b851a-a00e-4f60-9f68-79ff5e57ae0d_userfile','Hydrangeas.jpg','dahun111',to_date('20/05/28 11:48:35','RR/MM/DD HH24:MI:SS'),235);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('6b8e8a3a-37a0-4735-a53c-407092382656_userfile','Desert.jpg','dahun111',to_date('20/05/28 12:04:43','RR/MM/DD HH24:MI:SS'),237);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('08fc9d3d-221e-4d66-9b49-641c969b332c_userfile','Jellyfish.jpg','dahun111',to_date('20/05/28 12:13:42','RR/MM/DD HH24:MI:SS'),241);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('94c3853d-fdbc-4646-9744-bf021036373e_userfile','Desert.jpg','dahun111',to_date('20/05/28 12:17:43','RR/MM/DD HH24:MI:SS'),243);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('3d2fb8a4-9e0f-495d-b9c8-72d814e93e6e_userfile','Desert.jpg','dahun111',to_date('20/05/28 12:13:51','RR/MM/DD HH24:MI:SS'),242);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('userfile','Hydrangeas.jpg','dahun111',to_date('20/05/28 12:17:53','RR/MM/DD HH24:MI:SS'),244);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('userfile','Desert.jpg','dahun111',to_date('20/05/28 12:28:02','RR/MM/DD HH24:MI:SS'),247);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('userfile','223fbb09-107e-41fa-a2c9-cf51f144d836_Hydrangeas.jpg','dahun111',to_date('20/05/28 12:28:09','RR/MM/DD HH24:MI:SS'),248);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('userfile','f5627e03-03f8-4c0d-963a-ca408d0d9315_Hydrangeas.jpg','dahun111',to_date('20/05/28 12:28:51','RR/MM/DD HH24:MI:SS'),249);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('userfile','7043c34d-f375-4e5a-b1de-7b710e1d6268_Jellyfish.jpg','dahun111',to_date('20/05/28 12:28:58','RR/MM/DD HH24:MI:SS'),250);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('userfile','Jellyfish.jpg','dahun111',to_date('20/05/28 12:34:00','RR/MM/DD HH24:MI:SS'),252);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('userfile','Hydrangeas.jpg','dahun111',to_date('20/05/28 12:34:11','RR/MM/DD HH24:MI:SS'),253);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','1c9bbed5-d849-448e-a3f9-9d3887bc9e83_Desert.jpg','dahun111',to_date('20/05/28 12:38:36','RR/MM/DD HH24:MI:SS'),254);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','b373c7aa-6c69-46eb-b173-9e9e4a0399b5_Desert.jpg','dahun111',to_date('20/05/28 12:42:37','RR/MM/DD HH24:MI:SS'),255);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','17763c67-40fc-4a1b-9ca4-01fda9f26bea_Desert.jpg','dahun111',to_date('20/05/28 12:43:45','RR/MM/DD HH24:MI:SS'),256);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','8427ea47-119e-4dae-a77f-3fea7765c594_Desert.jpg','dahun111',to_date('20/05/28 12:44:49','RR/MM/DD HH24:MI:SS'),257);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','3812db24-dec9-4054-9780-67262f24b325_Desert.jpg','dahun111',to_date('20/05/28 12:46:04','RR/MM/DD HH24:MI:SS'),259);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','fff7007c-cfd7-42a7-9e54-bc4096ff713e_Desert.jpg','dahun111',to_date('20/05/28 12:49:06','RR/MM/DD HH24:MI:SS'),260);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','f0761e4e-abb2-4b58-b4c2-ddbae82d6cd2_Desert.jpg','dahun111',to_date('20/05/28 12:49:08','RR/MM/DD HH24:MI:SS'),261);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','6537b3a1-8b38-4a25-92a1-aa817a9cdb4b_Desert.jpg','dahun111',to_date('20/05/28 12:49:16','RR/MM/DD HH24:MI:SS'),262);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','d0fa5d1d-6d9b-4e28-a9fb-9cc39f3a211d_userfile',null,to_date('20/05/28 13:53:43','RR/MM/DD HH24:MI:SS'),263);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','4882ac0c-6a0f-4eb7-a2d9-73b8b53a3ed0_userfile','dahun111',to_date('20/05/28 13:54:00','RR/MM/DD HH24:MI:SS'),264);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','6a11c638-2668-43a9-b28e-b4a50e8753a3_userfile','dahun111',to_date('20/05/28 13:54:29','RR/MM/DD HH24:MI:SS'),265);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('7fbf7d36-af00-438c-987e-2fd87d8d9ac2_Koala.jpg','Koala.jpg',null,to_date('20/05/19 15:35:21','RR/MM/DD HH24:MI:SS'),103);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('57db8f21-145d-4339-aa31-262a90281590_Koala.jpg','Koala.jpg',null,to_date('20/05/19 15:36:53','RR/MM/DD HH24:MI:SS'),104);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('ac0f5c63-5ed5-4514-a8ce-b53416d686d1_Lighthouse.jpg','Lighthouse.jpg',null,to_date('20/05/19 15:38:14','RR/MM/DD HH24:MI:SS'),105);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','f2161736-6cf7-4217-a9f5-eaf597d08736_userfile','dahun111',to_date('20/05/28 13:56:44','RR/MM/DD HH24:MI:SS'),270);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Tulips.jpg','25aed568-63c7-4f47-8feb-4c0cf8533312_userfile','dahun111',to_date('20/05/28 13:55:31','RR/MM/DD HH24:MI:SS'),267);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','917106ee-1a37-4a9d-aba0-e542b586f046_userfile','dahun111',to_date('20/05/28 13:55:46','RR/MM/DD HH24:MI:SS'),268);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','a24fee24-7e83-4d98-a3b9-72f02c5876b0_userfile','dahun111',to_date('20/05/28 13:56:43','RR/MM/DD HH24:MI:SS'),269);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','b546003a-862e-4acd-93f1-eb4b1a0a7040_userfile','dahun111',to_date('20/05/28 13:56:45','RR/MM/DD HH24:MI:SS'),271);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','d0056510-6a6e-4397-89f2-12374990f3ba_userfile','dahun111',to_date('20/05/28 13:56:45','RR/MM/DD HH24:MI:SS'),272);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','1c7f00cf-155d-42ad-b43c-4f60a1893610_userfile','dahun111',to_date('20/05/28 13:56:45','RR/MM/DD HH24:MI:SS'),273);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','c6051db0-411b-4c36-9e4c-eb4729fb427b_userfile','dahun111',to_date('20/05/28 13:56:52','RR/MM/DD HH24:MI:SS'),274);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','293a39e1-ef50-430e-aac1-e16d876f92a2_userfile','dahun111',to_date('20/05/28 14:01:09','RR/MM/DD HH24:MI:SS'),275);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','83805e98-e7d0-44ff-9038-2d21e47e7599_userfile','dahun111',to_date('20/05/28 14:01:15','RR/MM/DD HH24:MI:SS'),276);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','927dd097-7cf6-4654-b14d-dc584f4b0f9f_userfile','dahun111',to_date('20/05/28 14:03:42','RR/MM/DD HH24:MI:SS'),277);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Koala.jpg','002bd53c-50b0-4714-b15c-871dc74cf8a5_userfile','dahun111',to_date('20/05/28 14:03:54','RR/MM/DD HH24:MI:SS'),278);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Koala.jpg','3bac7415-cf26-495a-ba68-5004b565e134_userfile','dahun111',to_date('20/05/28 14:06:34','RR/MM/DD HH24:MI:SS'),279);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','3931e87f-63bd-4453-8075-234b873b09c2_userfile','dahun111',to_date('20/05/28 14:06:39','RR/MM/DD HH24:MI:SS'),280);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','b73d1ed4-bbb5-4ffb-86c8-fffa500d6231_userfile','dahun111',to_date('20/05/28 14:08:19','RR/MM/DD HH24:MI:SS'),281);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','11f1d285-1b6b-4a15-ae3b-265c03c2cb22_userfile','dahun111',to_date('20/05/28 14:08:36','RR/MM/DD HH24:MI:SS'),282);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','182b6d46-8758-496e-af06-a062e4d6e5d2_Jellyfish.jpg','dahun111',to_date('20/05/28 14:12:29','RR/MM/DD HH24:MI:SS'),284);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/28 14:12:35','RR/MM/DD HH24:MI:SS'),285);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','Desert.jpg','dahun111',to_date('20/05/28 14:13:14','RR/MM/DD HH24:MI:SS'),286);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/28 14:14:18','RR/MM/DD HH24:MI:SS'),287);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','7cd5f8d9-3cb8-46ff-bf5e-f6e5f7254d02_Hydrangeas.jpg','dahun111',to_date('20/05/28 14:14:41','RR/MM/DD HH24:MI:SS'),288);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','563efc75-df2a-458d-8700-041eeeeaa570_Hydrangeas.jpg','dahun111',to_date('20/05/28 14:14:51','RR/MM/DD HH24:MI:SS'),289);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('5db16b72-527f-4d9d-b52e-17d765bd82cd_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 12:40:28','RR/MM/DD HH24:MI:SS'),122);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('370a035c-7d90-417c-9afa-f2d08c7563b5_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 13:30:20','RR/MM/DD HH24:MI:SS'),125);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('c92edccd-969d-40e8-98a5-c88bc7a8f7fa_Desert.jpg','Desert.jpg','dahun111',to_date('20/05/20 14:40:20','RR/MM/DD HH24:MI:SS'),137);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('39165310-1899-4f1e-82eb-0a085231df22_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 15:34:58','RR/MM/DD HH24:MI:SS'),143);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('eda1e360-bbdc-4b0e-b0ef-bf4a809167f8_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 15:39:16','RR/MM/DD HH24:MI:SS'),144);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('cebefb39-95c1-4861-812b-47e6710b08b8_Penguins.jpg','Penguins.jpg',null,to_date('20/05/19 15:40:50','RR/MM/DD HH24:MI:SS'),107);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('9103221f-93f9-401c-b15e-772059611f9b_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 10:35:08','RR/MM/DD HH24:MI:SS'),118);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('86cf343e-50ce-454a-bc1d-bb4fc2b520a7_Desert.jpg','Desert.jpg','dahun111',to_date('20/05/20 15:41:19','RR/MM/DD HH24:MI:SS'),146);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('f3c1c1ab-cea4-45cf-9ffd-4307e987231a_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 15:42:33','RR/MM/DD HH24:MI:SS'),147);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('15b69464-3f85-4c65-aff0-c33508724c9c_Desert.jpg','Desert.jpg','dahun111',to_date('20/05/20 15:49:23','RR/MM/DD HH24:MI:SS'),148);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('1a599105-5941-4085-9fde-7130519a2945_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 15:52:42','RR/MM/DD HH24:MI:SS'),149);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('daadc43b-e4ca-4951-a649-d9d5b8199200_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/20 20:04:08','RR/MM/DD HH24:MI:SS'),181);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('307ad793-13cf-446a-8210-ebbef89f0e72_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/20 20:06:25','RR/MM/DD HH24:MI:SS'),182);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('4e247314-abdf-4789-99c0-adc71e3d0e65_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/20 20:06:49','RR/MM/DD HH24:MI:SS'),183);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('aa93e48b-0575-4c3e-a60e-13367772a5fa_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/20 20:08:00','RR/MM/DD HH24:MI:SS'),184);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('aa2a2cea-89af-492b-9ad1-6a026f8c47d0_Penguins.jpg','Penguins.jpg','dahun111',to_date('20/05/20 20:12:06','RR/MM/DD HH24:MI:SS'),185);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('e59e12aa-0950-4fe7-b0b9-062b79d42be8_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/20 20:14:36','RR/MM/DD HH24:MI:SS'),186);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','a931cd5a-8983-459c-8a86-10f51eab7abe_Hydrangeas.jpg','dahun111',to_date('20/05/28 14:20:58','RR/MM/DD HH24:MI:SS'),290);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','9f7f5ece-f8f9-4448-ad28-4da6163a239f_Hydrangeas.jpg','dahun111',to_date('20/05/28 15:03:53','RR/MM/DD HH24:MI:SS'),311);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','8a428602-d60a-4ee2-bbe9-34680de281f2_Hydrangeas.jpg','dahun111',to_date('20/05/28 15:06:16','RR/MM/DD HH24:MI:SS'),312);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','436abef7-cd2d-4c46-b623-ea858d084d1d_Desert.jpg','dahun111',to_date('20/05/28 15:06:26','RR/MM/DD HH24:MI:SS'),313);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','deae17bc-9e39-4777-a1c4-b27a2188ff3a_Chrysanthemum.jpg','dahun111',to_date('20/05/28 15:06:36','RR/MM/DD HH24:MI:SS'),314);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','7b6a0f57-e389-4698-9888-93a7991f854c_Hydrangeas.jpg','dahun111',to_date('20/05/28 15:07:29','RR/MM/DD HH24:MI:SS'),315);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','66a7ec62-4171-4108-a237-9cf1c1afd956_Desert.jpg','dahun111',to_date('20/05/28 15:07:33','RR/MM/DD HH24:MI:SS'),316);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','6ed24f57-d4b1-458d-ae52-2cbd193cd0c8_Chrysanthemum.jpg','dahun111',to_date('20/05/28 16:55:20','RR/MM/DD HH24:MI:SS'),350);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','a07f2cc7-c0a1-4439-b79b-8b64bc861548_Jellyfish.jpg','dahun111',to_date('20/05/28 19:29:44','RR/MM/DD HH24:MI:SS'),405);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','fca94bc4-4bb4-421f-aec7-cf32432ca6c8_Hydrangeas.jpg','dahun111',to_date('20/05/28 20:08:46','RR/MM/DD HH24:MI:SS'),419);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Lighthouse.jpg','0e0393d4-de52-420c-8854-4a4a2d457184_Lighthouse.jpg','dahun111',to_date('20/05/28 20:06:51','RR/MM/DD HH24:MI:SS'),414);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Lighthouse.jpg','fb8d146f-d1f5-45af-972e-43029bf07af5_Lighthouse.jpg','dahun111',to_date('20/05/28 20:06:56','RR/MM/DD HH24:MI:SS'),415);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','2795c6b3-b2e6-45c4-9f62-fdb51f413afa_Hydrangeas.jpg','dahun111',to_date('20/05/28 20:08:34','RR/MM/DD HH24:MI:SS'),417);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','35b11c6a-f21b-4ab2-b246-89b8bad5c9d9_Hydrangeas.jpg','dahun111',to_date('20/05/28 20:08:39','RR/MM/DD HH24:MI:SS'),418);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','542e66d0-3080-4103-840d-a03713ef1502_Desert.jpg','dahun111',to_date('20/05/28 20:10:32','RR/MM/DD HH24:MI:SS'),420);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','177d26f0-08ab-49b9-8f5a-859c7992b08c_Desert.jpg','dahun111',to_date('20/05/28 20:10:36','RR/MM/DD HH24:MI:SS'),421);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','95ac948c-6d15-4a4e-a855-65685731e555_Hydrangeas.jpg','dahun111',to_date('20/05/28 20:13:47','RR/MM/DD HH24:MI:SS'),422);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','14eb489f-0bd6-439c-bfdd-b67902e9c6a0_Hydrangeas.jpg','dahun111',to_date('20/05/28 20:13:50','RR/MM/DD HH24:MI:SS'),423);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','f9dd01ed-21e4-47ec-bff2-6566a98b003f_Hydrangeas.jpg','dahun111',to_date('20/05/28 20:38:47','RR/MM/DD HH24:MI:SS'),439);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','e6a2fae1-2964-4379-ad1b-1b20c65a9b0d_Jellyfish.jpg','dahun111',to_date('20/05/28 20:39:05','RR/MM/DD HH24:MI:SS'),440);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','1705624a-2b3c-4556-aad4-0d104f90dfc1_Jellyfish.jpg','dahun111',to_date('20/05/28 20:39:06','RR/MM/DD HH24:MI:SS'),441);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','dee9a59f-e152-450a-9ce1-f08e2f075689_Jellyfish.jpg','dahun111',to_date('20/05/28 20:41:39','RR/MM/DD HH24:MI:SS'),442);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','d40366b0-320f-494f-9879-67833a854371_Jellyfish.jpg','dahun111',to_date('20/05/28 20:43:53','RR/MM/DD HH24:MI:SS'),443);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','9311ef6b-ad0b-44b5-a45f-aa68ea5c180f_Jellyfish.jpg','dahun111',to_date('20/05/29 09:20:13','RR/MM/DD HH24:MI:SS'),447);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('92a8a0ce-3e45-4253-bc2b-6a398d8a8ba6_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 15:30:40','RR/MM/DD HH24:MI:SS'),142);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('bfd2f1df-cd62-4288-bf55-0dd0de527409_Desert.jpg','Desert.jpg','dahun111',to_date('20/05/20 15:40:14','RR/MM/DD HH24:MI:SS'),145);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('57f797bd-5b71-474d-8ed0-f470ffc5d593_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 17:15:03','RR/MM/DD HH24:MI:SS'),155);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('70059455-814e-4e42-80b5-8408992b5a99_Koala.jpg','Koala.jpg','dahun111',to_date('20/05/20 17:15:14','RR/MM/DD HH24:MI:SS'),156);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('f0a42645-a9c0-44d7-9309-32181be90e20_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 17:30:15','RR/MM/DD HH24:MI:SS'),161);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('64d4c3ce-fdc5-4ddd-baa3-15fee8ecd1ad_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 19:35:01','RR/MM/DD HH24:MI:SS'),172);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('b9bb6ca3-e83b-479b-b4d9-a91816944ff8_userfile','Koala.jpg','dahun111',to_date('20/05/21 10:40:15','RR/MM/DD HH24:MI:SS'),200);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','35abeedd-c96e-4081-9162-daf7d2f60617_Chrysanthemum.jpg','dahun111',to_date('20/05/28 16:15:16','RR/MM/DD HH24:MI:SS'),334);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','25ae1aec-fbc4-40ef-8d6b-fbd27df21270_Chrysanthemum.jpg','dahun111',to_date('20/05/28 16:50:11','RR/MM/DD HH24:MI:SS'),348);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','793fe0aa-7bac-4826-89f3-a4edb4e6a1a0_Desert.jpg','dahun111',to_date('20/05/28 17:35:27','RR/MM/DD HH24:MI:SS'),370);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','cca91a9f-fc29-46f5-ae72-5a26bf290508_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:40:25','RR/MM/DD HH24:MI:SS'),375);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','51b75adb-5fa4-47c4-8799-b2cdae80d4bb_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:40:27','RR/MM/DD HH24:MI:SS'),376);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','0d24199f-a7fb-45d0-b54c-896070f451e0_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:40:30','RR/MM/DD HH24:MI:SS'),377);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','9d0255b3-3b90-47aa-8284-1fff16a4a7be_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:55:12','RR/MM/DD HH24:MI:SS'),383);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','e2c8b51b-48c5-4ec5-ab2f-775227f71e3c_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:55:16','RR/MM/DD HH24:MI:SS'),384);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','60e736dd-40f7-4a0a-a965-e07e064dd670_Jellyfish.jpg','dahun111',to_date('20/05/28 20:35:13','RR/MM/DD HH24:MI:SS'),436);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','f880591b-af84-4cf0-8601-e91bd1b4d747_Jellyfish.jpg','dahun111',to_date('20/05/28 19:25:20','RR/MM/DD HH24:MI:SS'),404);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('f9356352-be93-4c15-aced-4ab27c7c1fbe_Lighthouse.jpg','Lighthouse.jpg',null,to_date('20/05/19 15:40:02','RR/MM/DD HH24:MI:SS'),106);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','95fe5312-8ab2-49d0-9c15-921d12ef874d_Jellyfish.jpg','dahun111',to_date('20/05/28 20:35:09','RR/MM/DD HH24:MI:SS'),435);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','ebb40313-9b79-4a93-a991-155152f65bd9_Hydrangeas.jpg','dahun111',to_date('20/05/29 09:04:52','RR/MM/DD HH24:MI:SS'),444);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','ac5f02c3-7653-47f1-9e12-c579f87fe517_Hydrangeas.jpg','dahun111',to_date('20/05/29 09:05:44','RR/MM/DD HH24:MI:SS'),445);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','fd3ffe00-e8f3-49c8-9bff-e74aaaab9f76_Jellyfish.jpg','dahun111',to_date('20/05/29 09:19:43','RR/MM/DD HH24:MI:SS'),446);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','5b32b748-47dc-4977-a4e1-ce24bc2342e4_Desert.jpg','dahun111',to_date('20/05/29 09:21:01','RR/MM/DD HH24:MI:SS'),448);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','3804322b-e0f7-4c12-a63d-ab97f0d18371_Jellyfish.jpg','dahun111',to_date('20/05/29 09:23:00','RR/MM/DD HH24:MI:SS'),449);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','9f755521-33ad-42f8-8e80-6a6ec3fd4664_Hydrangeas.jpg','dahun111',to_date('20/05/29 09:23:22','RR/MM/DD HH24:MI:SS'),450);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','9ea78bea-6889-4ad1-88f1-6ef033233bcf_Hydrangeas.jpg','dahun111',to_date('20/05/29 09:23:36','RR/MM/DD HH24:MI:SS'),451);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('d3f65057-d656-421d-8300-6fa9674eac54_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/20 17:12:35','RR/MM/DD HH24:MI:SS'),152);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('ab0a2765-015d-4137-8913-2b4758457aac_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 17:13:58','RR/MM/DD HH24:MI:SS'),153);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('ceb4822f-e8ef-48b6-95ba-c70b2cb53d1c_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/20 17:14:03','RR/MM/DD HH24:MI:SS'),154);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('f2e82aa6-a6f1-43db-b9b6-99a14af293b2_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 17:24:31','RR/MM/DD HH24:MI:SS'),157);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('619a59d5-74c8-45ad-a2e1-7f9d5141b170_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 17:24:53','RR/MM/DD HH24:MI:SS'),158);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('940f08ff-bfd5-40da-8205-410435dfc102_Penguins.jpg','Penguins.jpg','dahun111',to_date('20/05/20 17:24:58','RR/MM/DD HH24:MI:SS'),159);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('f528e7cc-4f5b-475c-b3ba-e87f8c87e95f_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 17:26:38','RR/MM/DD HH24:MI:SS'),160);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('36bfc0bf-0091-4332-9f15-d5a221f770e6_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 17:30:55','RR/MM/DD HH24:MI:SS'),162);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('4e769f8f-41e3-4f6b-abfd-48bba4d3ba56_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 17:31:36','RR/MM/DD HH24:MI:SS'),163);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('13db207f-df60-4134-b30f-10a38c925d84_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 17:44:02','RR/MM/DD HH24:MI:SS'),164);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('9516c42b-a040-49a5-a242-46f76a98f2d5_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 17:45:47','RR/MM/DD HH24:MI:SS'),165);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('d8257627-64d0-4241-9209-bdb49f6451c7_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 17:47:44','RR/MM/DD HH24:MI:SS'),166);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('c1800890-18cd-4bdd-9a7c-cecf1d604af5_Desert.jpg','Desert.jpg','dahun111',to_date('20/05/20 17:51:04','RR/MM/DD HH24:MI:SS'),167);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('2ffa7339-4371-4988-8c4f-4238bba3502d_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 17:58:30','RR/MM/DD HH24:MI:SS'),168);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('c94f6666-282b-4ed7-ad56-4a2d16ac879c_Tulips.jpg','Tulips.jpg','dahun111',to_date('20/05/20 19:30:31','RR/MM/DD HH24:MI:SS'),169);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('bf7dc086-aff7-45ea-9bb0-fd1c96c7fc79_Chrysanthemum.jpg','Chrysanthemum.jpg','dahun111',to_date('20/05/20 19:30:39','RR/MM/DD HH24:MI:SS'),170);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('b0054099-4d8d-4872-af5a-252463eb5418_Tulips.jpg','Tulips.jpg','dahun111',to_date('20/05/20 19:34:56','RR/MM/DD HH24:MI:SS'),171);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('9f69c5ef-3630-4fe9-ae89-c23647f95c7d_Desert.jpg','Desert.jpg','dahun111',to_date('20/05/20 17:12:02','RR/MM/DD HH24:MI:SS'),150);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('2c266c1d-3268-4e1f-a214-2e401a37d2d1_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 17:12:31','RR/MM/DD HH24:MI:SS'),151);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('ab41cb93-3191-4be3-87ad-d6e90af49ce5_Desert.jpg','Desert.jpg','dahun111',to_date('20/05/20 19:46:25','RR/MM/DD HH24:MI:SS'),173);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('9af3515d-5cfe-43f0-adf9-b8776f2918b8_Desert.jpg','Desert.jpg','dahun111',to_date('20/05/20 19:48:33','RR/MM/DD HH24:MI:SS'),174);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('2d6c2ad5-2df5-4dcd-9f10-f14091e920ed_Desert.jpg','Desert.jpg','dahun111',to_date('20/05/20 19:48:57','RR/MM/DD HH24:MI:SS'),175);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('119b150e-2747-4ee4-9a24-48262c3170b0_Tulips.jpg','Tulips.jpg','dahun111',to_date('20/05/20 19:49:03','RR/MM/DD HH24:MI:SS'),176);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('9db677fb-ce2b-457c-92a4-0ea352e12560_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 19:51:32','RR/MM/DD HH24:MI:SS'),177);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('ab2400f4-9c52-445b-940d-dc145218f5fb_Tulips.jpg','Tulips.jpg','dahun111',to_date('20/05/20 19:54:35','RR/MM/DD HH24:MI:SS'),178);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('1b130e2c-7748-4e94-aff9-774608aaf94a_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 19:57:26','RR/MM/DD HH24:MI:SS'),179);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('b2a81ce0-6a4a-40e6-93ac-e43d11a2bac2_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 20:01:07','RR/MM/DD HH24:MI:SS'),180);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('e6e208e9-db42-4b99-82b6-4885f22bf52f_Penguins.jpg','Penguins.jpg','dahun111',to_date('20/05/20 20:15:16','RR/MM/DD HH24:MI:SS'),187);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('57e7afdb-943f-4b69-becd-a242ed9df67e_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/20 20:17:39','RR/MM/DD HH24:MI:SS'),188);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('0f511404-d116-4693-991f-a8a9dc235c42_Desert.jpg','Desert.jpg','dahun111',to_date('20/05/20 20:19:25','RR/MM/DD HH24:MI:SS'),189);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('d99eb969-9cd7-4081-a6d1-f5ab464b3933_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/20 20:38:00','RR/MM/DD HH24:MI:SS'),190);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('b3786bf6-9d67-4814-84f9-86ad388ad6f6_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/20 20:39:18','RR/MM/DD HH24:MI:SS'),191);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('777357f3-da3b-4f18-b341-049408efe206_',null,'dahun111',to_date('20/05/20 20:39:20','RR/MM/DD HH24:MI:SS'),192);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('5c13a816-aaa9-4d70-95f4-806b8e794cb5_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/20 20:42:10','RR/MM/DD HH24:MI:SS'),193);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('userfile','Jellyfish.jpg','dahun111',to_date('20/05/28 12:30:19','RR/MM/DD HH24:MI:SS'),251);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('userfile','Hydrangeas.jpg','dahun111',to_date('20/05/28 12:25:11','RR/MM/DD HH24:MI:SS'),245);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('userfile','Desert.jpg','dahun111',to_date('20/05/28 12:25:23','RR/MM/DD HH24:MI:SS'),246);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','8e8ff8a0-6681-4663-aeb4-c644dde066ba_Desert.jpg','dahun111',to_date('20/05/28 12:45:00','RR/MM/DD HH24:MI:SS'),258);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','0b8f7e31-a5e5-4cd4-b8da-3932d2d9c640_Jellyfish.jpg','dahun111',to_date('20/05/28 14:10:28','RR/MM/DD HH24:MI:SS'),283);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','8e4a8283-5417-46e4-9493-6c75567d639b_Desert.jpg','dahun111',to_date('20/05/28 14:21:05','RR/MM/DD HH24:MI:SS'),291);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','a73e5ee9-c8d7-4f4b-a1c9-e2e1d4bafa4d_Desert.jpg','dahun111',to_date('20/05/28 14:22:41','RR/MM/DD HH24:MI:SS'),292);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','53754ed4-4800-41b2-ace9-55c9238bdbdb_Desert.jpg','dahun111',to_date('20/05/28 14:23:25','RR/MM/DD HH24:MI:SS'),293);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','a287b09d-45a7-421c-9185-14ec4e004664_Chrysanthemum.jpg','dahun111',to_date('20/05/28 14:23:33','RR/MM/DD HH24:MI:SS'),294);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','cbf3e948-80f6-48ac-9fab-413fad217bcd_Chrysanthemum.jpg','dahun111',to_date('20/05/28 14:25:31','RR/MM/DD HH24:MI:SS'),295);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','56c53c5b-8e56-4d67-a830-e8abedd8f046_Desert.jpg','dahun111',to_date('20/05/28 14:25:38','RR/MM/DD HH24:MI:SS'),296);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','201b09cd-df61-42e4-996b-3e2afbb1e12b_Desert.jpg','dahun111',to_date('20/05/28 14:31:00','RR/MM/DD HH24:MI:SS'),297);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','ab2fc180-7d96-4e74-a462-f8c355a4895a_Desert.jpg','dahun111',to_date('20/05/28 14:31:07','RR/MM/DD HH24:MI:SS'),298);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Penguins.jpg','7d8d3fa3-f47b-4771-b237-3ad737df5b3f_Penguins.jpg','dahun111',to_date('20/05/28 14:31:58','RR/MM/DD HH24:MI:SS'),299);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','a7041514-16ec-4ede-a68c-43739427e7b0_Desert.jpg','dahun111',to_date('20/05/28 14:38:01','RR/MM/DD HH24:MI:SS'),300);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','16614a21-6acf-4cb9-9b04-87b82c002a30_Desert.jpg','dahun111',to_date('20/05/28 14:49:42','RR/MM/DD HH24:MI:SS'),301);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','c68df338-4a17-4f9d-8f03-cb9bca31cf69_Jellyfish.jpg','dahun111',to_date('20/05/28 14:52:17','RR/MM/DD HH24:MI:SS'),305);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','e7c90837-4b52-4a6e-963e-63c4b9841e00_Hydrangeas.jpg','dahun111',to_date('20/05/28 14:51:37','RR/MM/DD HH24:MI:SS'),303);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','1cd6a6d8-cc20-4012-a0a3-8f0e4e6db93e_Jellyfish.jpg','dahun111',to_date('20/05/28 14:51:47','RR/MM/DD HH24:MI:SS'),304);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','1d13cf20-63da-48c2-9f1d-a58da0eea0b2_Desert.jpg','dahun111',to_date('20/05/28 14:52:25','RR/MM/DD HH24:MI:SS'),306);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','a2d791f7-fc61-4a18-93ea-517db2f234d0_Desert.jpg','dahun111',to_date('20/05/28 14:53:04','RR/MM/DD HH24:MI:SS'),307);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Koala.jpg','3d586730-eab3-4a05-a387-3dcf173e736b_Koala.jpg','dahun111',to_date('20/05/28 14:53:11','RR/MM/DD HH24:MI:SS'),308);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Koala.jpg','1b62070e-65a0-4109-abcc-9849d7456880_Koala.jpg','dahun111',to_date('20/05/28 14:59:13','RR/MM/DD HH24:MI:SS'),309);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','30a3eb46-c386-43c8-97fc-48ccccca2a44_Chrysanthemum.jpg','dahun111',to_date('20/05/28 14:59:24','RR/MM/DD HH24:MI:SS'),310);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','7de48637-6af2-4701-8a2b-e7ace5db9666_Hydrangeas.jpg',null,to_date('20/05/28 15:38:15','RR/MM/DD HH24:MI:SS'),317);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','c48349b2-46ca-4ba9-ae1d-326c4e8c6ed5_Desert.jpg','dahun111',to_date('20/05/28 15:43:09','RR/MM/DD HH24:MI:SS'),318);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','75e02634-7a9a-472d-a052-eb8812bd4d2f_Desert.jpg','dahun111',to_date('20/05/28 15:43:10','RR/MM/DD HH24:MI:SS'),319);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','fa439a90-2bde-4ba0-8442-61eb2eb95b6e_Desert.jpg','dahun111',to_date('20/05/28 15:43:13','RR/MM/DD HH24:MI:SS'),320);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','aa1a03f3-2f1c-4515-adc4-8e54e207917f_Desert.jpg','dahun111',to_date('20/05/28 15:43:14','RR/MM/DD HH24:MI:SS'),321);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','eb3bf22f-5621-4df6-943d-e31a48117290_Desert.jpg','dahun111',to_date('20/05/28 15:43:15','RR/MM/DD HH24:MI:SS'),322);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','679ca844-15e9-4849-8163-69f984e42670_Desert.jpg','dahun111',to_date('20/05/28 15:43:15','RR/MM/DD HH24:MI:SS'),323);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','d05f6478-311e-437e-a461-ba8445b40580_Desert.jpg','dahun111',to_date('20/05/28 15:44:20','RR/MM/DD HH24:MI:SS'),324);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','219b9b30-fba3-4a33-a5cb-db45b3b55e05_Desert.jpg','dahun111',to_date('20/05/28 15:51:57','RR/MM/DD HH24:MI:SS'),325);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','1233dc58-8db8-4bee-a91c-018badb27055_Desert.jpg','dahun111',to_date('20/05/28 15:52:05','RR/MM/DD HH24:MI:SS'),326);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','67153d18-1304-4d4a-b90a-9c4bdd6b0c5b_Desert.jpg','dahun111',to_date('20/05/28 15:52:32','RR/MM/DD HH24:MI:SS'),327);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','9d54d451-577e-4e63-8296-292ddc370d9b_Desert.jpg','dahun111',to_date('20/05/28 15:53:44','RR/MM/DD HH24:MI:SS'),328);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','2659b46a-7b5b-45bb-b3a5-83c527e012fa_Desert.jpg','dahun111',to_date('20/05/28 15:53:47','RR/MM/DD HH24:MI:SS'),329);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','1178c80c-7482-4b9e-b154-597e4eb3acf8_Desert.jpg','dahun111',to_date('20/05/28 16:11:41','RR/MM/DD HH24:MI:SS'),330);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','1661d220-b7f6-4ddc-9190-9c0d0291cf3b_Chrysanthemum.jpg','dahun111',to_date('20/05/28 16:11:51','RR/MM/DD HH24:MI:SS'),331);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','3e24aea1-03df-4258-ad8a-e45f126ccd99_Chrysanthemum.jpg','dahun111',to_date('20/05/28 16:11:57','RR/MM/DD HH24:MI:SS'),332);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','5ee235c7-3326-4472-a2e5-fa1668357d54_Chrysanthemum.jpg','dahun111',to_date('20/05/28 16:12:03','RR/MM/DD HH24:MI:SS'),333);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','82cb4752-4aca-46c7-9ac5-a8a4212fd6cb_Desert.jpg','dahun111',to_date('20/05/28 16:15:40','RR/MM/DD HH24:MI:SS'),335);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','06cef92d-f4d2-49c5-871e-4c56f7bd0405_Desert.jpg','dahun111',to_date('20/05/28 16:15:43','RR/MM/DD HH24:MI:SS'),336);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','be7f37ee-8b32-4bb8-9783-08793089bb23_Desert.jpg','dahun111',to_date('20/05/28 16:17:49','RR/MM/DD HH24:MI:SS'),337);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','ce0ab3b4-96bb-443a-86ff-fbcd631b7563_Hydrangeas.jpg','dahun111',to_date('20/05/28 16:22:52','RR/MM/DD HH24:MI:SS'),338);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Koala.jpg','c844f2bc-53b9-4527-b9a4-903d3bb5fef4_Koala.jpg','dahun111',to_date('20/05/28 16:22:59','RR/MM/DD HH24:MI:SS'),339);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Koala.jpg','0346ca5f-af41-484e-88f6-90c25fdc5b17_Koala.jpg','dahun111',to_date('20/05/28 16:24:13','RR/MM/DD HH24:MI:SS'),340);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','4cd55888-5abf-4a79-9c68-749041f75482_Hydrangeas.jpg','dahun111',to_date('20/05/28 16:24:21','RR/MM/DD HH24:MI:SS'),341);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','8e4c4849-3204-4492-97ee-f388b6997216_Hydrangeas.jpg','dahun111',to_date('20/05/28 16:24:24','RR/MM/DD HH24:MI:SS'),342);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('b2715e30-ff36-4595-b14d-eaea0df49440_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 09:49:49','RR/MM/DD HH24:MI:SS'),116);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('b53afc39-8649-4a1b-aad6-141210992ce1_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 10:04:45','RR/MM/DD HH24:MI:SS'),117);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('03865ec1-f9d2-4ae0-a990-8dda412e4dc9_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 10:43:20','RR/MM/DD HH24:MI:SS'),119);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('b9b597b9-49c9-44d7-91f8-5308cd155d4f_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 10:47:19','RR/MM/DD HH24:MI:SS'),120);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('b9844a0b-e4f3-48cc-a351-fd394488925d_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 11:19:01','RR/MM/DD HH24:MI:SS'),121);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('82129512-bd00-4e5f-8ead-9dda3e9f9356_Koala.jpg','Koala.jpg','dahun111',to_date('20/05/20 12:40:55','RR/MM/DD HH24:MI:SS'),123);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('c99311b9-82f5-45ec-9794-c0f3ab815d7c_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/20 12:41:43','RR/MM/DD HH24:MI:SS'),124);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('b1068a25-6e01-4218-b989-f41a3b2eee79_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 13:32:06','RR/MM/DD HH24:MI:SS'),126);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('e3ce6636-06a1-46a5-889f-78845b727056_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 13:32:23','RR/MM/DD HH24:MI:SS'),127);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('9223fbd0-34e6-4cb8-9fa3-91380b7f506b_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 13:32:49','RR/MM/DD HH24:MI:SS'),128);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('e9e3ee1b-35c2-46f6-8821-e4a43168b2f9_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 13:58:34','RR/MM/DD HH24:MI:SS'),129);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('f761def8-f5b0-416f-8107-5a5f92dcf44a_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 14:03:39','RR/MM/DD HH24:MI:SS'),130);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('1d834a42-616e-452d-8693-32c204ed8801_Lighthouse.jpg','Lighthouse.jpg','dahun111',to_date('20/05/20 14:07:06','RR/MM/DD HH24:MI:SS'),131);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('5dc87ec6-3e1a-4910-b6b7-69205aec4b77_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 14:13:36','RR/MM/DD HH24:MI:SS'),132);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('49562a5c-14e6-47a3-81e9-b314026bc8c5_',null,'dahun111',to_date('20/05/20 14:15:37','RR/MM/DD HH24:MI:SS'),133);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('6ed93aab-5e51-4269-b266-4d7f79d9834c_Jellyfish.jpg','Jellyfish.jpg','dahun111',to_date('20/05/20 14:22:45','RR/MM/DD HH24:MI:SS'),134);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('090058c0-c7dc-434d-b892-1cbeb5047e46_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 14:24:48','RR/MM/DD HH24:MI:SS'),135);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('41d326b3-2e2f-4390-aab5-b5a52f7cce84_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 14:27:47','RR/MM/DD HH24:MI:SS'),136);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('9d1ef2f8-8549-4dc0-9aad-0598d85266d2_다운로드 (8).jpg','다운로드 (8).jpg','dudwnss48',to_date('20/05/20 14:56:36','RR/MM/DD HH24:MI:SS'),138);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('aad5051a-fe27-4b15-ab0b-dbd2b141a180_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 15:06:23','RR/MM/DD HH24:MI:SS'),139);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('e6a528f5-8ba1-466f-a661-ac8dbab2c0e6_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 15:08:38','RR/MM/DD HH24:MI:SS'),140);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('2f83e88b-8893-495d-8662-95083b504369_Hydrangeas.jpg','Hydrangeas.jpg','dahun111',to_date('20/05/20 15:19:55','RR/MM/DD HH24:MI:SS'),141);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','4f830c74-5b07-48a9-913f-25bb78bdb422_Chrysanthemum.jpg','dahun111',to_date('20/05/28 16:24:33','RR/MM/DD HH24:MI:SS'),343);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','a693f7b2-a497-47fe-9ecd-91249c308337_Chrysanthemum.jpg','dahun111',to_date('20/05/28 16:46:43','RR/MM/DD HH24:MI:SS'),344);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','b914f7e5-4214-4d7b-8452-c6e07acbfb5e_Chrysanthemum.jpg','dahun111',to_date('20/05/28 16:47:16','RR/MM/DD HH24:MI:SS'),345);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','8566a3e7-1cf2-4913-a30e-8e3bbd32f7eb_Chrysanthemum.jpg','dahun111',to_date('20/05/28 16:47:54','RR/MM/DD HH24:MI:SS'),346);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','9a722564-12d9-467e-8540-2aaa532cd337_Chrysanthemum.jpg','dahun111',to_date('20/05/28 16:48:15','RR/MM/DD HH24:MI:SS'),347);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Chrysanthemum.jpg','7e7d7664-7a8b-4b5c-a540-b5935b5710a0_Chrysanthemum.jpg','dahun111',to_date('20/05/28 16:54:45','RR/MM/DD HH24:MI:SS'),349);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','39ad67a5-19bd-4af3-8d85-92cc41d5d70c_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:18:42','RR/MM/DD HH24:MI:SS'),353);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','93418ffd-1fae-4dcc-a6cd-497c2ac07f36_Desert.jpg','dahun111',to_date('20/05/28 17:19:26','RR/MM/DD HH24:MI:SS'),355);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','c9a107b8-d945-4ee3-bee9-588da3ef955a_Desert.jpg','dahun111',to_date('20/05/28 17:18:54','RR/MM/DD HH24:MI:SS'),354);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','cddddb9e-a726-4fa2-b00e-c719842f111e_Desert.jpg','dahun111',to_date('20/05/28 17:19:39','RR/MM/DD HH24:MI:SS'),356);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','56beda17-525b-4f72-84ca-63244dba7e3d_Desert.jpg','dahun111',to_date('20/05/28 17:26:32','RR/MM/DD HH24:MI:SS'),359);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','2bbb6382-a9ad-4870-8da5-3a679d2e2de3_Desert.jpg','dahun111',to_date('20/05/28 17:27:16','RR/MM/DD HH24:MI:SS'),361);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','2b178ff6-cef7-477d-8ea2-eee49a59385b_Desert.jpg','dahun111',to_date('20/05/28 17:27:28','RR/MM/DD HH24:MI:SS'),363);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','5d6ff938-3497-4d93-916f-180b76cde25f_Desert.jpg','dahun111',to_date('20/05/28 17:28:59','RR/MM/DD HH24:MI:SS'),365);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','145aa8f2-ce5c-47f1-bdc6-931e678f87c7_Desert.jpg','dahun111',to_date('20/05/28 17:28:48','RR/MM/DD HH24:MI:SS'),364);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','5664b178-1a39-45e3-a631-748cd665caac_Desert.jpg','dahun111',to_date('20/05/28 17:31:10','RR/MM/DD HH24:MI:SS'),366);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','2090ced5-8289-4856-a91e-21745472480e_Desert.jpg','dahun111',to_date('20/05/28 17:31:18','RR/MM/DD HH24:MI:SS'),367);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','e73ecae8-7a20-4e69-8995-fd3de156e0a3_Desert.jpg','dahun111',to_date('20/05/28 17:32:12','RR/MM/DD HH24:MI:SS'),368);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','3de2758c-0503-4d2a-82e2-916b61935a1a_Desert.jpg','dahun111',to_date('20/05/28 17:34:52','RR/MM/DD HH24:MI:SS'),369);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','44ad2046-226e-49b4-8d67-9f5d1e42e3be_Desert.jpg','dahun111',to_date('20/05/28 17:37:10','RR/MM/DD HH24:MI:SS'),371);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','a8205ed0-43b6-42d5-9882-6fd2248ca2ab_Desert.jpg','dahun111',to_date('20/05/28 17:38:16','RR/MM/DD HH24:MI:SS'),372);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','7f9d6faf-656d-40c2-8a6c-9dc8c8ae98a5_Desert.jpg','dahun111',to_date('20/05/28 17:38:50','RR/MM/DD HH24:MI:SS'),373);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','9bb64421-cdbc-4c04-9d10-f14a774b0106_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:39:31','RR/MM/DD HH24:MI:SS'),374);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','c69caf00-c897-43d1-a4f0-a0ac82221094_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:42:10','RR/MM/DD HH24:MI:SS'),378);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','1784caae-40d7-4616-9a48-221ebaac4ffe_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:44:51','RR/MM/DD HH24:MI:SS'),379);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','c98db7d0-666e-4be9-9813-63828e45eba3_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:47:25','RR/MM/DD HH24:MI:SS'),380);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','2f5f342d-ac09-4f66-a410-ec9a5d566dcc_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:47:26','RR/MM/DD HH24:MI:SS'),381);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','e36c53ce-dfee-4be7-82da-4db123fd9218_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:54:11','RR/MM/DD HH24:MI:SS'),382);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','35739ee6-57a7-4ae5-acdc-4517998acb91_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:56:07','RR/MM/DD HH24:MI:SS'),385);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','375f4099-a6c3-40c7-8b2c-5e5506c59a58_Hydrangeas.jpg','dahun111',to_date('20/05/28 17:57:38','RR/MM/DD HH24:MI:SS'),386);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','320da909-66d1-4a29-9c9e-043ca7d16174_Hydrangeas.jpg','dahun111',to_date('20/05/28 18:02:56','RR/MM/DD HH24:MI:SS'),387);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','364b3cc5-d059-4dec-9438-ea6a71f48b7c_Desert.jpg','dahun111',to_date('20/05/28 18:03:03','RR/MM/DD HH24:MI:SS'),388);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','ab79e126-b72a-46fa-a98f-37a55c15d719_Desert.jpg','dahun111',to_date('20/05/28 18:11:37','RR/MM/DD HH24:MI:SS'),389);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','088753c3-c63f-400e-88ec-010a68fdd4e8_Hydrangeas.jpg','dahun111',to_date('20/05/28 18:12:18','RR/MM/DD HH24:MI:SS'),390);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','3a154594-7b49-471b-a5ff-ea9455cd14e8_Hydrangeas.jpg','dahun111',to_date('20/05/28 18:14:41','RR/MM/DD HH24:MI:SS'),391);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','11a36ebb-ad12-4a53-afc4-20012b8795b4_Desert.jpg','dahun111',to_date('20/05/28 18:32:23','RR/MM/DD HH24:MI:SS'),395);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','496eee3e-1d78-4cbf-ae6f-7d221c787a44_Desert.jpg','dahun111',to_date('20/05/28 18:30:53','RR/MM/DD HH24:MI:SS'),393);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','dbf8e3c8-2bab-4589-afdd-39b4cbfbf45c_Desert.jpg','dahun111',to_date('20/05/28 18:32:19','RR/MM/DD HH24:MI:SS'),394);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','958c4dfa-c368-46c4-be1b-c479f1638e31_Jellyfish.jpg','dahun111',to_date('20/05/28 19:29:46','RR/MM/DD HH24:MI:SS'),406);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','4297dea0-80ac-4227-9d24-e5f3a8c3f458_Desert.jpg','dahun111',to_date('20/05/28 18:52:47','RR/MM/DD HH24:MI:SS'),401);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','c60995e7-b126-43c0-b4e9-dcbdcd639d0c_Hydrangeas.jpg','dahun111',to_date('20/05/28 19:56:31','RR/MM/DD HH24:MI:SS'),408);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','7fd32852-1afc-44e5-9fb8-deaf82d096d1_Hydrangeas.jpg','dahun111',to_date('20/05/28 19:56:27','RR/MM/DD HH24:MI:SS'),407);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','5ef4a326-4c5a-42eb-a21b-3302ac1be3f6_Hydrangeas.jpg','dahun111',to_date('20/05/28 19:56:40','RR/MM/DD HH24:MI:SS'),409);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','99d03391-1813-4ade-9f7d-97cb63d49435_Desert.jpg','dahun111',to_date('20/05/28 19:59:22','RR/MM/DD HH24:MI:SS'),410);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','a802fa6e-202c-4f56-8e26-e77ee7c1699f_Desert.jpg','dahun111',to_date('20/05/28 20:01:51','RR/MM/DD HH24:MI:SS'),411);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','2b4ca1ba-7075-4595-b9e4-bce635dc497f_Jellyfish.jpg','dahun111',to_date('20/05/28 20:27:52','RR/MM/DD HH24:MI:SS'),426);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','7b19baf1-4be8-411c-a65a-a09425cae42f_Jellyfish.jpg','dahun111',to_date('20/05/28 20:23:03','RR/MM/DD HH24:MI:SS'),424);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','b71e11f2-bb8c-4491-82fb-61d06fed5b7c_Jellyfish.jpg','dahun111',to_date('20/05/28 20:23:10','RR/MM/DD HH24:MI:SS'),425);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','13f6f018-ecea-4c29-94e4-a08dd93fe304_Hydrangeas.jpg','dahun111',to_date('20/05/28 20:28:09','RR/MM/DD HH24:MI:SS'),427);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','88b66d1a-7a29-4ee0-9ac8-c118f093fc78_Hydrangeas.jpg','dahun111',to_date('20/05/28 20:28:15','RR/MM/DD HH24:MI:SS'),428);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','aa605474-a020-44b5-9b83-a216bea26064_Hydrangeas.jpg','dahun111',to_date('20/05/28 20:29:28','RR/MM/DD HH24:MI:SS'),429);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','98618ba2-800b-40ca-80ae-c911c0ec15e8_Desert.jpg','dahun111',to_date('20/05/28 20:29:41','RR/MM/DD HH24:MI:SS'),430);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Desert.jpg','7476cc8d-de50-46a7-8827-bde1b9c189de_Desert.jpg','dahun111',to_date('20/05/28 20:29:45','RR/MM/DD HH24:MI:SS'),431);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','83013b0a-4d7a-4831-aab9-2629acd7fa70_Jellyfish.jpg','dahun111',to_date('20/05/28 20:30:56','RR/MM/DD HH24:MI:SS'),432);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','29de25de-9b06-4792-a070-c0567c7fce61_Jellyfish.jpg','dahun111',to_date('20/05/28 20:31:00','RR/MM/DD HH24:MI:SS'),433);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Jellyfish.jpg','f423d232-1a8a-4c78-9450-065dfd0acf2b_Jellyfish.jpg','dahun111',to_date('20/05/28 20:32:53','RR/MM/DD HH24:MI:SS'),434);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','fd3f8243-2758-4ef0-926a-e1013572aebb_Hydrangeas.jpg','dahun111',to_date('20/05/28 20:37:35','RR/MM/DD HH24:MI:SS'),437);
Insert into HR.BBS_FILE (FILE_NAME,FILE_REAL_NAME,USER_ID,REGISTERED_DATE,FILE_NO) values ('Hydrangeas.jpg','46dcc3f4-2f58-44e0-9bcf-c57e67052bfc_Hydrangeas.jpg','dahun111',to_date('20/05/28 20:37:36','RR/MM/DD HH24:MI:SS'),438);
REM INSERTING into HR.BBS_USER
SET DEFINE OFF;
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('dahun427','5678','정다훈','남자','11@22',to_date('20/05/18 17:18:46','RR/MM/DD HH24:MI:SS'));
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('dahun','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','정다훈','남자','dd@nn',to_date('20/05/18 17:18:46','RR/MM/DD HH24:MI:SS'));
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('dahun113','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','정다훈','남자','daun@naver.com',to_date('20/05/20 14:55:04','RR/MM/DD HH24:MI:SS'));
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('dudwnss48','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','권영준','남자','dudwnss48@naver.com',to_date('20/05/20 14:55:25','RR/MM/DD HH24:MI:SS'));
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('kard','fe178a46852a60be5166b9270d4536ba77d75fcb6373f2ca2891f7a2e4307d8b','정다훈','남자','daun@naver.com',to_date('20/05/26 18:45:15','RR/MM/DD HH24:MI:SS'));
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('dahun111','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','정다훈','남자','da@nnn',to_date('20/05/18 17:18:46','RR/MM/DD HH24:MI:SS'));
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('dahun1','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','jung','남자','dd@nn',to_date('20/05/18 17:18:46','RR/MM/DD HH24:MI:SS'));
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('dahun428','1234','정다훈','남자','rubcustomer@gamil.com',to_date('20/05/18 17:18:46','RR/MM/DD HH24:MI:SS'));
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('dahun424','8ea319be5a9762473a1e78c9525a854c','정다훈','남자','daun@naver.com',to_date('20/05/18 17:18:46','RR/MM/DD HH24:MI:SS'));
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('dahun423','12638d53c56d83d52e1edaaec5d9f0b9','정다훈','남자','daun@naver.com',to_date('20/05/18 17:18:46','RR/MM/DD HH24:MI:SS'));
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('dahun422','2e928f24f4b7d3bab9eb75ed08352e8f','정','남자','daun@naver.com',to_date('20/05/18 17:18:46','RR/MM/DD HH24:MI:SS'));
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('dahun421','1d6a7de2d53e13f0a2844852da7c3746a45a40f47ee8a0d7cbff19530de7b825','정','남자','daun@naver.com',to_date('20/05/18 17:18:46','RR/MM/DD HH24:MI:SS'));
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('dahun420','d87b20bd203fa766f11d42ff80fa074d9624b508996321013c96b17be95aceb6','정','남자','daun@naver.com',to_date('20/05/18 17:18:46','RR/MM/DD HH24:MI:SS'));
Insert into HR.BBS_USER (USER_ID,USER_PASSWORD,USER_NAME,USER_GENDER,USER_EMAIL,REGISTERED_DATE) values ('asdf','f0e4c2f76c58916ec258f246851bea091d14d4247a2fc3e18694461b1816e13b','정다훈','남자','daun@naver.com',to_date('20/05/26 18:43:17','RR/MM/DD HH24:MI:SS'));
--------------------------------------------------------
--  DDL for Index SYS_C007362
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007362" ON "HR"."BBS_BBS" ("BBS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BBS_FILE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."BBS_FILE_PK" ON "HR"."BBS_FILE" ("FILE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007022
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007022" ON "HR"."BBS_USER" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BBS_BBS
--------------------------------------------------------

  ALTER TABLE "HR"."BBS_BBS" ADD PRIMARY KEY ("BBS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."BBS_BBS" MODIFY ("BBS_TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BBS_FILE
--------------------------------------------------------

  ALTER TABLE "HR"."BBS_FILE" ADD CONSTRAINT "FILE_NO" PRIMARY KEY ("FILE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."BBS_FILE" MODIFY ("FILE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BBS_USER
--------------------------------------------------------

  ALTER TABLE "HR"."BBS_USER" ADD CONSTRAINT "GENDER_CK" CHECK (USER_GENDER IN('남자','여자')) ENABLE;
  ALTER TABLE "HR"."BBS_USER" ADD CONSTRAINT "SYS_C007022" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."BBS_USER" MODIFY ("USER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HR"."BBS_USER" MODIFY ("USER_GENDER" NOT NULL ENABLE);
  ALTER TABLE "HR"."BBS_USER" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."BBS_USER" MODIFY ("USER_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "HR"."BBS_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BBS_BBS
--------------------------------------------------------

  ALTER TABLE "HR"."BBS_BBS" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."BBS_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BBS_FILE
--------------------------------------------------------

  ALTER TABLE "HR"."BBS_FILE" ADD CONSTRAINT "USER_ID" FOREIGN KEY ("USER_ID")
	  REFERENCES "HR"."BBS_USER" ("USER_ID") ENABLE;
