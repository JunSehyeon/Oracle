-- 제2장 오라클 데이터베이스 기본
-- 1. 테이블과 sql기본
--2) 자료형
create table type_test_number(
    num1 number, //자릿수 제한 없음
    num2 number(2), //최대 2자리
    num3 number(3,1), //3자리중 소수 1자리 99.9 까지 가능
    num4 number(4,2), //전체 4자리 중 소수 2자리 99.99 까지 가능
    num5 number(5,6), //전체 자리 보다 소수자릿수가 더 큼 -> 오류발생
    num6 number(6,-1) //소수 자릿수가 음수 -> 소수점 아래는 저장하지 않고 반올림 처리
    );

insert into type_test_number (num1) values(1);
insert into type_test_number (num1) values(123);
insert into type_test_number (num2) values(12);
insert into type_test_number (num2) values(1.2);
insert into type_test_number (num3) values(12);

select * from type_test_number;

create table type_test_char(
    char1 CHAR(1), //고정길이 문자 1자리
    char2 CHAR(2), //고정길이 2자리
    char3 char(3), //고정길이 3자리
    vchar1 varchar2(1), //가변길이 최대 1자리
    vchar2 varchar2(2), //가변길이 최대 2자리
    vchar3 varchar2(3), //가변길이 최대 3자리
    nvchar1 nvarchar2(1), //유니코드 문자 가변길이 최대 1자리
    nvchar2 nvarchar2(2), //유니코드 문자 가변길이 최대 2자리
    nvchar3 nvarchar2(3) //유니코드 문자 가변길이 최대 3자리
   );
   
insert into type_test_char (char1) values ('A');
insert into type_test_char(vchar1) values ('A');

--3) 테이블 생성및 삭제
CREATE TABLE USER1 (
    USER_ID VARCHAR2(20),
    NAME VARCHAR2(20),
    HP CHAR(13),
    AGE NUMBER
);

drop table user1;

--4)데이터 추가
insert into user1 values('A101','김유신','010-1234-1111',25);
insert into user1 (USER_ID,name,age) values('A104','강감찬',45);

--5)데이터 조회
select * from user1;
select * from user1 where user_id = 'A101';
select * from user1 where name = '김유신';
select * from user1 where age>30;
select user_id, name ,age from user1;

--6)데이터 수정
update user1 set hp='010-1234-4444' where user_id='A104';
update user1 set age=51 where user_id='A101';
update user1 set hp='010-1234-1001',age = 27 where user_id='A101';

--7)데이터 삭제
delete from user1 where user_id='A101';
delete from user1 where user_id='A104' and age = 27;

