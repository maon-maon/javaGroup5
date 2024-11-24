show tables;

create table scribble (
	inIdx INT NOT NULL AUTO_INCREMENT,
	inMid VARCHAR(50) NOT NULL, 
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
