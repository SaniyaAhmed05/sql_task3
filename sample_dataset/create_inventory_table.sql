CREATE TABLE inventory (
    product_id INT PRIMARY KEY IDENTITY(1,1),
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    last_updated DATETIME DEFAULT GETDATE()
);
