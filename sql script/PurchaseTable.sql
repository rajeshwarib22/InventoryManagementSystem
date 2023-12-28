use inventory_management_system;

DROP TABLE purchase;

CREATE TABLE Purchase (
  Purchase_ID INT NOT NULL AUTO_INCREMENT,
  Supplier_ID INT NOT NULL,
  Product_ID INT NOT NULL,
  user_id INT NOT NULL,
  Inventory_ID INT NOT NULL,
  Purchase_Track_ID INT NOT NULL,
  Purchase_Date date,
  Purchase_Price decimal(10,2),
  Quantity_Purchased INT NOT NULL,
  Status VARCHAR(20),
  PRIMARY KEY (Purchase_ID),
  FOREIGN KEY (user_id) REFERENCES User(id),
  FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
  FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
);

ALTER TABLE purchase ADD FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id);
ALTER TABLE purchase ADD FOREIGN KEY (Purchase_Track_ID) REFERENCES purchase_track(Purchase_Track_ID);



select * from purchase;

update purchase
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

update purchase
set Quantity_purchased = 110
where purchase_id =2;

update purchase
set Quantity_purchased = 135
where purchase_id =3;
update purchase
set Quantity_purchased = 95
where purchase_id =6;
update purchase
set Quantity_purchased = 92
where purchase_id =8;
update purchase
set Quantity_purchased = 97
where purchase_id =16;



update purchase
set status = 'Understock'
where purchase_id in (34,46);
update purchase
set Quantity_purchased = 9
where purchase_id =34;
update purchase
set Quantity_purchased = 6
where purchase_id =46;


update purchase
set status = 'Out of Stock'
where purchase_id in (23,50);
update purchase
set Quantity_purchased = 0
where purchase_id =23;
update purchase
set Quantity_purchased = 0
where purchase_id =50;

