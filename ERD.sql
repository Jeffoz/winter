CREATE TABLE `manufacturer` (
  `manufacturer_id` INT PRIMARY KEY,
  `manufacturer_name` VARCHAR(100)
);

CREATE TABLE `model` (
  `model_id` INT,
  `model_name` VARCHAR(100),
  `model_year` DATE,
  `manufacturer_id` INT
);

ALTER TABLE `model` ADD FOREIGN KEY (`model_id`) REFERENCES `manufacturer` (`manufacturer_id`);
