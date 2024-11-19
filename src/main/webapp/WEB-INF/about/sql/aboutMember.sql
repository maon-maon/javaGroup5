show tables;

create table aboutMember (
	aIdx int not null auto_increment, /*회원 고유변호*/
	aMid varchar(50) not null, /*아이디=이메일*/
	aPwd varchar(100) not null, /*비밀번호(SHA256 암호화처리)*/
	aNickName varchar(20) not null, /*닉네임*/
	aPhoto varchar(100) default 'logo.png', /*회원사진*/
	aAnl varchar(3) default '비동의', /*서비스제공동의*/
	aLevel int default '3', /*회원등급 관리0운영1회원2회원3휴면8탈퇴9*/
	aJoinD datetime default now(), /*가입일*/
	aVisitD datetime default now(), /*최종방문일*/
	aVisitCnt int default 0, /*접속횟수*/
	aPwdHint varchar(50), 
	aPwdAns varchar(50), 
	aAddress varchar(100), /*이벤트용주소*/
	aTel varchar(20), /*이벤트용전화번호*/
	primary key(aIdx),
	unique key(aMid)
);
desc aboutMember;
-- drop table aboutMember;

select * from aboutMember;

alter table aboutMember rename column aPwd_Hint to aPwdHint;

select * from aboutMember where aMid = 'admin';
select * from aboutMember where aIdx = '1';

insert into aboutMember values(default, ?,?,?,?, default,default,default,default,defaultdefault,default,default)
insert into aboutMember values(default, 'aaaa','1234','a에이',default,default, default,default,default,default,default,default,default,default)

ALTER TABLE your_table MODIFY COLUMN column_name datatype FIRST;
ALTER TABLE your_table MODIFY COLUMN column_name datatype AFTER other_column;