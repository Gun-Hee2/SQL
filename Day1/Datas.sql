/*
열(항목): column
행: row,record
*/

SELECT * FROM EMPLOYEES;

-- 한줄 주석문

-- table 생성
/*
CREATE TABLE 테이블명(
    컬럼명1 자료형,
    컬럼명2 자료형,
    
);
*/

-- 자료형
/*
   JAVA          DB                      MySQL
   String        *VARCHAR2, CHAR, LONG    VARCHAR
   int           INTEGER, *NUMBER
   double        NUMBER
   Date          *DATE

*/

-- 문자열
-- CHAR
CREATE TABLE TB_CHAR(
    COL1 CHAR(10 BYTE),
    COL2 CHAR(10 CHAR),
    COL3 CHAR(10)
);

/*
INSERT INTO 테이블명( 컬럼명1, 컬럼명2 ... )
VALUES( 값1, 값2 ... )
*/

INSERT INTO TB_CHAR(COL1, COL2, COL3)
VALUES('가', '나', '다');  -- 한글 : 3BYTE

INSERT INTO TB_CHAR(COL1, COL2, COL3)
VALUES('ABC', 'ABC', 'ABC');  -- 영문 : 1BYTE

INSERT INTO TB_CHAR(COL1, COL2, COL3)
VALUES('가나', '가나', '가나');

INSERT INTO TB_CHAR(COL1, COL2, COL3)
VALUES('가나다', '가나다', '가나다');

SELECT * FROM TB_CHAR;

SELECT COL1, COL2, COL3, LENGTHB(COL1), LENGTHB(COL2), LENGTHB(COL3)
FROM TB_CHAR;

/*
     10 CHAR
     가 -> 3BYTE = 3 + 9 => 12
     가나 -> 6BYTE = 6 + 8 => 14
     가나다 -> 9BYTE = 9 + 7 => 16
*/

-- VARCHAR2
CREATE TABLE TB_VARCHAR(
    COL1 VARCHAR2(10 BYTE),
    COL2 VARCHAR2(10 CHAR),
    COL3 VARCHAR2(10)
);

INSERT INTO TB_VARCHAR(COL1, COL2, COL3)
VALUES('ABC', 'ABC', 'ABC');

INSERT INTO TB_VARCHAR(COL1, COL2, COL3)
VALUES('가나다', '가나다', '가나다');

SELECT COL1, COL2, COL3, LENGTHB(COL1), LENGTHB(COL2), LENGTHB(COL3)
FROM TB_VARCHAR;

-- LONG
-- 최대 2GB까지 저장이 가능
-- 테이블당 1개의 컬럼만 사용이 가능
CREATE TABLE TB_LONG(
    COL LONG
);    

INSERT INTO TB_LONG(COL)
VALUES('ABCDE');

SELECT * FROM TB_LONG;

-- 숫자(INTEGER, NUMBER)
CREATE TABLE TB_INTEGER(
    COL1 INTEGER,
    COL2 INTEGER
);

INSERT INTO TB_INTEGER(COL1, COL2)
VALUES(123, 456);

INSERT INTO TB_INTEGER(COL1, COL2)
VALUES(123, 456.1);

INSERT INTO TB_INTEGER(COL1, COL2)
VALUES('123', '456');

CREATE TABLE TB_NUMBER(
    COL1 NUMBER,
    COL2 NUMBER(5),
    COL3 NUMBER(5,2),
    COL4 NUMBER(*,2)
);

INSERT INTO TB_NUMBER(COL1, COL2, COL3, COL4)
VALUES(1234.5678, 12345.12, 123.456, 123.56789);

SELECT * FROM TB_NUMBER;


-- 날짜
-- 연도, 월, 일, 시, 분, 초
CREATE TABLE TB_DATE(
    COL1 DATE,
    COL2 DATE
);

INSERT INTO TB_DATE(COL1, COL2)
VALUES('21/09/09', SYSDATE);

INSERT INTO TB_DATE(COL1, COL2)
VALUES('21-09-09', SYSDATE - 1);

INSERT INTO TB_DATE(COL1, COL2)
VALUES(TO_DATE('2021-09-09 11:55:23', 'YYYY-MM-DD HH:MI:SS'), SYSDATE - 1);










