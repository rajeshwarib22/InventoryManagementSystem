drop table Purchase_Track;

CREATE TABLE Purchase_Track (
  Purchase_Track_ID INT NOT NULL AUTO_INCREMENT,
  Purchase_ID INT NOT NULL,
  Inventory_ID INT NOT NULL,
  Quantity_Updated int,
  PRIMARY KEY (Purchase_Track_ID),
  FOREIGN KEY (purchase_id) REFERENCES Purchase(purchase_id)
);
ALTER TABLE purchase_track ADD FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id);

select * from purchase_track;