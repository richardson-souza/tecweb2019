COPY reg_motorista(mot_cpf, mot_rg, mot_nome, mot_renach, mot_telefone, mot_status, mot_cep, mot_rua)
FROM 'reg_motorista.csv' DELIMITER ',' CSV HEADER;
