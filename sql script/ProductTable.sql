use inventory_management_system;

drop table product; 


CREATE TABLE Product (
  product_id INT NOT NULL AUTO_INCREMENT,
  inventory_id INT NOT NULL,
  product_name VARCHAR(200) NOT NULL,
  product_category VARCHAR(150) NOT NULL,
  product_subcategory VARCHAR(150) NOT NULL,
  brand VARCHAR(100) NOT NULL,
  purchase_Date date,
  PRIMARY KEY (product_id)
);

ALTER TABLE Product ADD FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id);

select * from product;--  where lower(brand) = 'acer';

select * from user;
