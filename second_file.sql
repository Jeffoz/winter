 TABLE manufacturer (
manufacturer_id INT NOT NULL AUTO_INCREMENT,
manufacturer_name VARCHAR(100),
CONSTRAINT pk_manufacturer PRIMARY KEY (manufacturer_id)
);

CREATE TABLE model (
model_id INT NOT NULL AUTO_INCREMENT,
model_name VARCHAR(100),
model_year DATE,
manufacturer_id INT,
CONSTRAINT pk_model PRIMARY KEY (model_id),
CONSTRAINT fk_model FOREIGN KEY model(manufacturer_id) REFERENCES manufacturer(manufacturer_id)
);





INSERT INTO manufacturer(manufacturer_name) VALUES
(BMW),
(Ford),
(Hyundai),
(Mitsubishi),
(Ram);

INSERT INTO model(model_name,model_year,manufacturer_id) VALUES
(330i,'2020-06-01',1),
(335i, '2022-10-01',1),
(F150, '2021-10-01',2),
(i30, '2020-12-01',3),
(Eclipse, '2022-01-01',4),
(Outlander, '2022-06-01',4),
(1500, '2019-09-01',5);