CREATE PROCEDURE manage_inventory
    @product_name VARCHAR(100),
    @category VARCHAR(50),
    @quantity INT,
    @price DECIMAL(10,2)
AS
BEGIN
    SET NOCOUNT ON;  -- improves performance, avoids extra messages

    -- Check if product exists
    IF EXISTS (SELECT 1 FROM inventory WHERE product_name = @product_name)
    BEGIN
        -- Update existing product
        UPDATE inventory
        SET quantity = quantity + @quantity,   -- increase stock
            price = @price,                    -- update price
            last_updated = GETDATE()
        WHERE product_name = @product_name;

        PRINT 'Stock updated successfully.';
    END
    ELSE
    BEGIN
        -- Insert new product
        INSERT INTO inventory (product_name, category, quantity, price)
        VALUES (@product_name, @category, @quantity, @price);

        PRINT 'New product added successfully.';
    END
END;
