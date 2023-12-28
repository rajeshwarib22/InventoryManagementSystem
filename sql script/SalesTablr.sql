use inventory_management_system;
drop table sales;

CREATE TABLE Sales (
  sales_id INT NOT NULL AUTO_INCREMENT,
  purchase_id INT NOT NULL,
  inventory_id INT NOT NULL,
  quantitysold INT NOT NULL,
  salesdate DATE NOT NULL,
  sales_price decimal(10,2),
  PRIMARY KEY (sales_id),
  FOREIGN KEY (purchase_id) REFERENCES Purchase(purchase_id),
  FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id)
);

select * from sales;