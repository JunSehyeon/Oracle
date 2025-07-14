/*
    날짜: 2025/07/14
    이름: 전세현
    내용: 2장 sql 기본
*/

--실습 1-2. NUMBER 자료형 이해

CREATE TABLE TYPE_TEST_NUMBER(
    num1 NUMBER,
    num2 NUMBER(2),
    num3 NUMBER(3,1),
    num4 NUMBER(4,2),
    num5 NUMBER(5,6),
    num6 NUMBER(6,-1)
);

-- num1 NUMBER
insert into TYPE_TEST_NUMBER (num1) values (1);
insert into TYPE_TEST_NUMBER (num1) values (123);
insert into TYPE_TEST_NUMBER (num1) values (123.74);
insert into TYPE_TEST_NUMBER (num1) values (123.12345);

-- num2 NUMBER(2)
insert into TYPE_TEST_NUMBER (num2) values (12);
insert into TYPE_TEST_NUMBER (num2) values (123);
insert into TYPE_TEST_NUMBER (num2) values (1.2);
insert into TYPE_TEST_NUMBER (num2) values (12.3);
insert into TYPE_TEST_NUMBER (num2) values (12.34567);
insert into TYPE_TEST_NUMBER (num2) values (12.56789);
insert into TYPE_TEST_NUMBER (num2) values (123.56789);

-- num3 NUMBER(3,1)
insert into TYPE_TEST_NUMBER (num3) values (12);
insert into TYPE_TEST_NUMBER (num3) values (123);
insert into TYPE_TEST_NUMBER (num3) values (12.1);
insert into TYPE_TEST_NUMBER (num3) values (12.1234);
insert into TYPE_TEST_NUMBER (num3) values (12.56789);
insert into TYPE_TEST_NUMBER (num3) values (123.56789);

--실습 1-3. 문자형 자료형 이해
CREATE TABLE TYPE_TEST_CHAR(
    char1 CHAR(1),
    char2 CHAR(2),
    char3 CHAR(3),
    vchar1 VARCHAR2(1),
    vchar2 VARCHAR2(2),
    vchar3 VARCHAR2(3),
    nvchar1 NVARCHAR2(1),
    nvchar2 NVARCHAR2(2),
    nvchar3 NVARCHAR2(3)
); 


--실습 1-4. 테이블 생성
CREATE TABLE USER1(
    USER_ID VARCHAR2(20),
    NAME VARCHAR2(20),
    HP CHAR(13),
    ACE NUMBER
);
 
//DROP TABLE USER1;

--실습 1-5.
INSERT INTO USER1 VALUES('A101','김유신','010-1234-1111','25');
INSERT INTO USER1 VALUES('A102','김춘추','010-1234-2222','23');
INSERT INTO USER1 VALUES('A103','장보고','010-1234-3333','45');

--실습 1-6.
SELECT * FROM USER1;
SELECT * FROM USER1 where name = '김춘추';

--실습 1-7.
update user1 set hp = '010-1234-1110',ace= 27 where user_id = 'A101';
update user1 set ace='age';

---------------실습 2
-- 실습하기 2-1
CREATE TABLE USER2 (
    USER_ID VARCHAR2(20) PRIMARY KEY,
    NAME VARCHAR2(20),
    HP CHAR(13),
    AGE NUMBER(2)
);

INSERT INTO USER2 VALUES ('A101', '김유신', '010-1234-1111', 23);
insert into user2 values ('A101', '김준추', '010-1234-2222', 21);

--실습하기 2-2
create table user3(
    user_id varchar2(20) primary key,
    name varchar2(20),
    hp char(13) UNIQUE,
    age number(3)
);

INSERT INTO USER3 VALUES ('A101', '김유신', '010-1234-1111', 23);
insert into user3 values ('A101', '김준추', '010-1234-2222', 21);
