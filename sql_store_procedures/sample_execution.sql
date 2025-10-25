-- Add a new product
EXEC manage_inventory 'Monitor', 'Electronics', 30, 8000.00;
-- Update existing stock
EXEC manage_inventory 'Keyboard', 'Electronics', 20, 1300.00;
-- Verify Results
SELECT * FROM inventory;
