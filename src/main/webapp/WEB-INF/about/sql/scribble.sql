show tables;

create table scribble (
	inIdx INT NOT NULL AUTO_INCREMENT,
	inMid VARCHAR(50) NOT NULL, /*외래키 aMid이메일*/
	inCtg VARCHAR(10) NOT NULL,
	inTitle VARCHAR(100) NOT NULL,
	inScore INT NOT NULL,
	inPhoto VARCHAR(100),
	inDate DATETIME DEFAULT CURRENT_TIMESTAMP,
	inOpen VARCHAR(3) NOT NULL DEFAULT 'NO',
	inMark VARCHAR(3) DEFAULT 'NO',
	inCpStt VARCHAR(3)  DEFAULT 'NO',
	inCpCnt INT 0,
	PRIMARY KEY(inIdx),
	unique key(inTitle),
	foreign key(inMid) references aboutmember(aMid) on update cascade
);
desc scribble;
-- drop table scribble;

select * from scribble;

insert into scribble values(default, 'admin', '', , , , , , , , , ,);

select * from scribble where inMid = 'xxxx';

select * from scribble where inOpen='YES' order by inIdx desc;

select * from scribble where inCpCnt=0;
select * from scribble where inCpCnt>0;
select * from scribble where inCpCnt>=1;

update scribble set inCpCnt=inCpCnt+1 where inIdx = 16;

update scribble set inMark='YES' where inIdx = 17;
select * from scribble where  inMark='YES';
select * from scribble where inMark='YES'and inMid='2222' order by inIdx desc;
