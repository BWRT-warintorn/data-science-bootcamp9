create table customers 
(
  id_customers INT,
  name_customers TEXT,
  segment TEXT,
  id_orders INT,
  date_orders TEXT,
  food_allergy TEXT
);

create table menu 
(
  id_orders INT,
  name_orders TEXT,
  price REAL
);

create table ingredients 
(
  name_orders TEXT UNIQUE,
  ingred_name_orders TEXT
);

iNSERT INTO customers VALUES
  (1,'bank','normal',1,'2023-11-11','shrimp'),
    (2,'title','member',3,'2023-08-24','pineapple'),
    (3,'yo','member',2,'2023-05-14',''),
    (4,'ko','normal',1,'2023-11-28','cheese,bacon'),
    (5,'aun','member',3,'2023-03-13','ham'),
    (6,'oat','normal',2,'2023-15-02','onion');
INSERT INTO menu VALUES
  (1,'hawaiian',479),
    (2,'seafood cooktail',589),
    (3,'super deluxe',539);
INSERT INTO ingredients VALUES
  ('hawaiian','ham,bacon,pineapple,cheese'),
  ('seafood cooktail','shrimp,ham,pineapple'),
  ('super deluxe','ham,bacon,mushroom,pineapple,onion');
