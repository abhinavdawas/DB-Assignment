-- Product_Category table
CREATE TABLE Product_Category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    desc TEXT, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Product table
CREATE TABLE Product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    desc TEXT,
    SKU VARCHAR(100) UNIQUE, 
    category_id INTEGER NOT NULL, 
    inventory_id INTEGER NOT NULL, 
    price NUMERIC(10,2) NOT NULL, 
    discount_id INTEGER, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Product_Category(id),
    FOREIGN KEY (inventory_id) REFERENCES Inventory(id), -- Assuming an Inventory table
    FOREIGN KEY (discount_id) REFERENCES Discount(id)  -- Assuming a Discount table 
);
