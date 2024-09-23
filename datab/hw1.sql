/*

|                                                                                         |
|                           -------------   (name)   --------------                       |
|                          /---------   (phone number)  -----------\   (billing address)  |
|                         /                                         \ /                   |
|                   o----------o                                o----------o              |
|                   | employee | --  X customer is helped X  -- | customer |              |
|                   o----------o                                o----------o              |
|                        |                                           |                    |
|                                                                                         |
|                    X prints X                                   X owns X                |
|                                                                                         |
|                        |                                           |                    |
|                   o---------o -- (customer id)                o---------o               |
|  (employee id) -- | invoice |                                 | bicycle |               |
|                   o---------o -- (open / closed status)       o---------o               |
|                        |                                           |                    |
|                        v                                           |                    |
|                 o--------------o                                   |                    |
|                 | invoice_item |                                   |                    |
|                 o--------------o                                   |                    |
|                      /     \                                       |                    |
|                     v       v                                                           |
|                o-------o o------o -------------------  X work is performed on X         |
|                | goods | | work |                                                       |
|  (quantity) -- o-------o o------o                                                       |
|               /     |     |      \                                                      |
|              /      |     |     (cost)                                                  |
|  (unit price)       |     |                                                             |
|                  (description)                                                          |
|                                                                                         |
c-----------------------------------------------------------------------------------------c
*/

-- Part 2: Relational Model

CREATE TABLE Employee (
   employee_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
   name VARCHAR(255),
   phone_number VARCHAR(20)
);

CREATE TABLE Customer (
   customer_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
   name VARCHAR(255),
   billing_address VARCHAR(255),
   phone_number VARCHAR(20)
);


CREATE TABLE Bicycle (
   bicycle_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
   customer_id INT,
   FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Invoice (
   invoice_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
   status ENUM('closed', 'open'),
   employee_id INT NOT NULL,
   customer_id INT NOT NULL,
   FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
   FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Invoice_Item (
   item_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
   invoice_id INT NOT NULL,
   description VARCHAR(255),
   unit_price DECIMAL(10, 2) NOT NULL,
   quantity INT,
   item_type ENUM('good', 'service') NOT NULL,
   employee_id INT,
   bicycle_id INT,
   FOREIGN KEY (invoice_id) REFERENCES Invoice(invoice_id),
   FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
   FOREIGN KEY (bicycle_id) REFERENCES Bicycle(bicycle_id)
);

-- Part 3: Example Data

INSERT INTO Employee (employee_id, name, phone_number) VALUES
(1, 'John Doe', '555-1234'),
(2, 'Jane Smith', '555-5678');

INSERT INTO Customer (customer_id, name, billing_address, phone_number) VALUES
(1, 'Alice Johnson', '123 Main St', '555-8765'),
(2, 'Bob Brown', '456 Oak St', '555-4321');

INSERT INTO Bicycle (bicycle_id, customer_id) VALUES
(1, 1),
(2, 2);

INSERT INTO Invoice (invoice_id, status, employee_id, customer_id) VALUES
(1, 'open', 1, 1), 
(2, 'closed', 2, 2);

INSERT INTO Invoice_Item (item_id, invoice_id, description, unit_price, quantity, item_type, employee_id, bicycle_id) VALUES
(1, 1, 'Brake Pads', 15.99, 2, 'good', NULL, NULL), 
(2, 1, 'Brake Tune-up', 25.00, 1, 'service', 1, 1), 
(3, 2, 'Tire Replacement', 30.00, 1, 'service', 2, 2);

-- Part 4: Generalizations

/*
We can have a general flight entity, with arrival and departure times and airports respectively. International and National flights are specializations of general flights. International flights are just flights that inherit from flights and potentially reference another international flight as a foreign key. This is done recursively until the destination is reached. National flights only inherit from flights.
*/

CREATE TABLE Flight (
   flight_number VARCHAR(10) PRIMARY KEY NOT NULL,
   departure_date DATE,
   departure_time TIME,
   arrival_time TIME,
   departure_airport CHAR(3),
   arrival_airport CHAR(3)
);

CREATE TABLE National_Flight (
   flight_number VARCHAR(10) PRIMARY KEY NOT NULL,
   FOREIGN KEY (flight_number) REFERENCES Flight(flight_number)
);

CREATE TABLE International_Flight (
   flight_number VARCHAR(10) PRIMARY KEY NOT NULL,
   next_flight_number VARCHAR(10),
   FOREIGN KEY (flight_number) REFERENCES Flight(flight_number),
   FOREIGN KEY (next_flight_number) REFERENCES Flight(flight_number)
);

