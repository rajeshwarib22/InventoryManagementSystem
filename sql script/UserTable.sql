use inventory_management_system;


CREATE TABLE User (
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(20) NOT NULL UNIQUE,
  email VARCHAR(30) NOT NULL UNIQUE,
  password VARCHAR(50) NOT NULL,
  role VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);

select * from user;

INSERT INTO User (username, email, password, role) VALUES ('johndoe', 'john.doe@example.com', 'admin1password', 'admin');
INSERT INTO User (username, email, password, role) VALUES ('marysmith', 'mary.smith@example.com', 'admin2password', 'admin');
INSERT INTO User (username, email, password, role) VALUES ('michaeljones', 'michael.jones@example.com', 'admin3password', 'admin');
INSERT INTO User (username, email, password, role) VALUES ('davidwilson', 'david.wilson@example.com', 'systemuser1password', 'system user');
INSERT INTO User (username, email, password, role) VALUES ('emilyjackson', 'emily.jackson@example.com', 'systemuser2password', 'system user');
INSERT INTO User (username, email, password, role) VALUES ('chrisbrown', 'chris.brown@example.com', 'systemuser3password', 'system user');
INSERT INTO User (username, email, password, role) VALUES ('lisamartin', 'lisa.martin@example.com', 'inventorymgr1password', 'inventory manager');
INSERT INTO User (username, email, password, role) VALUES ('briancarter', 'brian.carter@example.com', 'inventorymgr2password', 'inventory manager');
INSERT INTO User (username, email, password, role) VALUES ('sarahwhite', 'sarah.white@example.com', 'inventorymgr3password', 'inventory manager');
INSERT INTO User (username, email, password, role) VALUES ('jackward', 'jack.ward@example.com', 'user1password', 'admin');
INSERT INTO User (username, email, password, role) VALUES ('amyhall', 'amy.hall@example.com', 'user2password', 'system user');
INSERT INTO User (username, email, password, role) VALUES ('peterwells', 'peter.wells@example.com', 'user3password', 'inventory manager');
commit;

select * from user where role='inventory manager';
select * from user where id=4;



