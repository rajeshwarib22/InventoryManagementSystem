drop table inventory;

CREATE TABLE Inventory (
  Inventory_ID INT NOT NULL auto_increment,
  product_id INT NOT NULL,
  Status VARCHAR(30),
  Cost_Price decimal(10,2),
  Unit_Price decimal(10,2),
  min_Quantity INT NOT NULL,
  max_Quantity INT NOT NULL,
  Quantity_Purchased INT NOT NULL,
  Purchase_ID INT NOT NULL,
  Sales_ID INT NOT NULL,
  PRIMARY KEY (Inventory_ID),
  FOREIGN KEY (product_id) REFERENCES Product(product_id),
  FOREIGN KEY (Purchase_ID) REFERENCES Purchase(Purchase_ID)
);

ALTER TABLE Inventory ADD FOREIGN KEY (Sales_ID) REFERENCES Sales(Sales_ID);

select * from inventory;

UPDATE inventory
SET cost_price = unit_price * quantity_purchased;

update inventory
set status = 'Over Stocked'
where purchase_id in (1,
2,
3,
6,
7,
8,
15,
16,
17);

update inventory
set Quantity_purchased = 110
where purchase_id =2;

update inventory
set Quantity_purchased = 135
where purchase_id =3;
update inventory
set Quantity_purchased = 95
where purchase_id =6;
update inventory
set Quantity_purchased = 92
where purchase_id =8;
update inventory
set Quantity_purchased = 97
where purchase_id =16;

update inventory
set status = 'Understock'
where purchase_id in (34,46);
update inventory
set Quantity_purchased = 9
where purchase_id =34;
update inventory
set Quantity_purchased = 6
where purchase_id =46;

update inventory
set status = 'Out of Stock'
where purchase_id in (23,50);
update inventory
set Quantity_purchased = 0
where purchase_id =23;
update inventory
set Quantity_purchased = 0
where purchase_id =50;

commit;




