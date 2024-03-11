Answer 1 : The relationship between these two entities is one-to-many. A product can belong to one category , but a category can have many products. This is because a product can only be listed under one category, but a category can group many related products.

Answer2 : Foreign Key Constraint: Define the category_id column in the "Product" table as a foreign key referencing the id column of the "Product_Category" table. This enforces that a category_id entered in the "Product" table must exist in the "Product_Category" table.
NOT NULL Constraint: Make the category_id column in the "Product" table NOT NULL, meaning that a category must be provided for a product.



