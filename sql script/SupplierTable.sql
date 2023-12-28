use inventory_management_system;
drop table supplier;

CREATE TABLE Supplier (
  Supplier_ID INT NOT NULL AUTO_INCREMENT,
  Suppiler_Name VARCHAR(35) NOT NULL ,
  Suppiler_Email VARCHAR(35) NOT NULL ,
  Suppiler_Contact VARCHAR(15) NOT NULL,
  Suppiler_Address VARCHAR(70) NOT NULL,
  PRIMARY KEY (Supplier_ID)
);

select * from supplier;
select * from user;


