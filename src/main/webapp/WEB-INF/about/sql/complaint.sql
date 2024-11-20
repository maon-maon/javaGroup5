show tables;

create tables complaint(
	cpIdx int not null AUTO_INCREMENT,
	cpCtg text not null,
	cpMemoIdx int not null,

	`aAnl` VARCHAR(3) NULL DEFAULT '비동의',
	`aLevel` INT(11) NULL DEFAULT '3',
	`aJoinD` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	primary key (cpIdx),
	foreign key(cpMemoIdx) references()
);