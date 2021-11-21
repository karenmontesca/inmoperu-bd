drop database if exists inmoperu;
create database inmoperu char set utf8 collate utf8_unicode_ci;
use inmoperu;
drop table if exists user;
create table user (
	`user_id` int AUTO_INCREMENT,  
    `nombres` varchar (100) DEFAULT NULL,  
	`apellidos` varchar (100) DEFAULT NULL,
    `nacimiento` date DEFAULT NULL,  
    `dni` varchar (8) DEFAULT NULL,  
    `email` varchar (50) DEFAULT NULL,  
    `usuario` varchar (50) DEFAULT NULL,
    `contrasenia` varchar (250) DEFAULT NULL,
    `register` datetime DEFAULT NULL,  
	PRIMARY KEY (`user_id`),
    unique KEY (`email`),
    unique KEY (`usuario`)
);
insert into user(nombres,apellidos,nacimiento,dni,email,usuario,contrasenia,register) 
values ("nombre usuario", "apellido usuario", "1998-02-10", "77452862", "user@gmail.com", "user", "123456", "2021-11-20 17:00:00");