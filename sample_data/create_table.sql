CREATE TABLE inventory (
    product_id INT IDENTITY(1,1) PRIMARY KEY,   -- Auto increment ID
    product_name VARCHAR(100) UNIQUE,           -- Unique product
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    last_updated DATETIME DEFAULT GETDATE()
);
