create table reg_usuario(
	
	usu_cpf varchar(11) primary key not null unique,
	usu_nome varchar(100) not null,
	usu_status varchar(7) not null,
	usu_senha varchar(30) not null
	
);

create table reg_motorista(
	
	mot_cpf varchar(11) not null unique,
	mot_rg varchar(20) not null,
	mot_nome varchar(100) not null,
	mot_renach varchar not null,
	mot_telefone varchar(20) not null,
	mot_status varchar(7) not null,
	mot_cep varchar(8) not null,
	mot_rua varchar(50),
	mot_bairro varchar(50),
	primary key(mot_cpf)
	
);

create table reg_taxi(

	taxi_renavam varchar(100) not null,
	taxi_placa varchar(8) primary key not null,
	taxi_chassi varchar(17) not null,
	taxi_modelo varchar(20) not null,
	taxi_marca varchar(20) not null,
	taxi_ano smallint not null,
	taxi_status varchar(7) not null

);

create table reg_permissao(

	perm_data_inicio timestamp not null,
	perm_data_fim timestamp not null,
	perm_tipo_motorista varchar(15) not null,
	perm_status varchar(7) not null,
	mot_cpf varchar(11) references reg_motorista(mot_cpf),
	usu_cpf varchar(11) references reg_usuario(usu_cpf),
	taxi_placa varchar(8) references reg_taxi(taxi_placa),
	primary key(mot_cpf, usu_cpf, taxi_placa)
)
