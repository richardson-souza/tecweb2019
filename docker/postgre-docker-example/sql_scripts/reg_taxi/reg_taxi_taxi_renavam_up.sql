ALTER TABLE reg_taxi DROP COLUMN taxi_renavam;
ALTER TABLE reg_taxi ADD COLUMN taxi_renavam VARCHAR(250) NOT NULL;
