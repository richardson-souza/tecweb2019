COPY saa_usuario(usu_cpf, usu_nome, usu_status, usu_senha)
FROM 'saa_usuario.csv' DELIMITER ',' CSV HEADER;
