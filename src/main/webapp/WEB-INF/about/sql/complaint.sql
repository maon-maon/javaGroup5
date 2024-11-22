show tables;

create table complaint(
	cpIdx int not null AUTO_INCREMENT,
	cpMid varchar(50) not null,
	cpCtg text not null,
	cpContent text null,
	cpMemoIdx int ,
	cpMemoTitle varchar(100) ,
	cpDate DATETIME  default CURRENT_TIMESTAMP,
	cpCnt int default 0,
	primary key(cpIdx),
	foreign key(cpMemoIdx) references scribble(inIdx) on update cascade,
	foreign key(cpMemoTitle) references scribble(inTitle) ON DELETE RESTRICT,
	foreign key(cpMid) references aboutmember(aMid) on update cascade
);
desc complaint;
--drop table complaint;

select * from complaint;

select count(*) as totRecCnt from complaint;

select count(*) as totRecCnt from complaint where cpCnt>=1;
select count(*) as totRecCnt from complaint where cpCnt=0;
select * from complaint where cpCnt>=1 order by cpIdx desc;
select * from complaint where cpCnt=0 order by cpIdx desc limit 0,5;

insert into complaint values(default, ?,?,?,?, default,default,?


