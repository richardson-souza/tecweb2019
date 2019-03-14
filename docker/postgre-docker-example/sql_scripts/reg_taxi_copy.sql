COPY reg_taxi(taxi_renavam, taxi_placa, taxi_chassi, taxi_modelo, taxi_marca, taxi_ano, taxi_status)
FROM 'reg_taxy.csv' DELIMITER ',' CSV HEADER;
