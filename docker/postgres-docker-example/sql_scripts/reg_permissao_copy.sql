COPY reg_permissao(perm_data_inicio, perm_data_fim, perm_tipo_motorista, perm_status, mot_cpf, taxi_placa)
FROM 'reg_permissao.csv' DELIMITER ',' CSV HEADER;
