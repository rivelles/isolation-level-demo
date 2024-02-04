CREATE DATABASE bank;
USE bank;

CREATE TABLE IF NOT EXISTS accounts (
  id INT NOT NULL,
  customer_id varchar(250) NOT NULL,
  balance DECIMAL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS loans (
  id INT NOT NULL,
  account_id INT NOT NULL,
  amount DECIMAL,
  PRIMARY KEY (id),
  CONSTRAINT fk_account
    FOREIGN KEY(id)
    REFERENCES accounts(id)
);

INSERT INTO accounts
(id, customer_id, balance)
VALUES
(1, 10, 1000.0),
(2, 20, 1000.0),
(3, 30, 1000.0),
(4, 30, 1000.0),
(5, 40, 1000.0),
(6, 40, 1000.0),
(7, 70, 1000.0),
(8, 80, 1000.0);
