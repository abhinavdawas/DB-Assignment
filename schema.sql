CREATE TABLE product_category (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  created_at TIMESTAMP NOT NULL,
  modified_at TIMESTAMP NOT NULL,
  deleted_at TIMESTAMP
);

CREATE TABLE product (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  sku VARCHAR(255) NOT NULL,
  category_id INT NOT NULL,
  inventory_id INT,
  price DECIMAL(10,2) NOT NULL,
  discount_id INT,
  created_at TIMESTAMP NOT NULL,
  modified_at TIMESTAMP NOT NULL,
  deleted_at TIMESTAMP,
  FOREIGN KEY (category_id) REFERENCES product_category(id)
);
