
create table aboutMember (
	aIdx int not null auto_increment,
	aMid varchar(20) not null,
	aPwd varchar(100) not null,
	aNickName varchar(20) not null,
	aPhoto varchar(100) default 'logo.png',
	aJoinD dattime not null default now(),
	aVisitD varchar(20) not null,
	aCur varchar(4) not null,
	aAnl varchar(4) default '비동의',
	aAddress varchar(100),
	aTel varchar(20),
	aVisitCnt varchar(1000),
	aLevel int default '3',
	primary key(aIdx)
);
