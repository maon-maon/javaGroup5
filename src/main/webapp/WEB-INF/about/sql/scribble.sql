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
	inCpl VARCHAR(3)  DEFAULT 'NO',
	inCpICnt INT NULL,
	PRIMARY KEY(inIdx),
	unique key(inTitle),
	foreign key(inMid) references aboutmember(aMid) on update cascade
);
desc scribble;
-- drop table scribble;

select * from scribble;

insert into scribble values(default, 'admin', '', , , , , , , , , ,);

select * from scribble where inMid = 'xxxx';