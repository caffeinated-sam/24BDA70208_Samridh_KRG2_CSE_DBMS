CREATE OR REPLACE FUNCTION check_stock()
RETURNS TRIGGER AS
$$
DECLARE
    available_qty INT;
BEGIN
    SELECT stock_qty
    INTO available_qty
    FROM Tbl_Products
    WHERE prod_id = NEW.prod_id;

    IF NEW.qty > available_qty THEN
        RAISE EXCEPTION 'Not enough stock';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_check_stock
BEFORE INSERT
ON Tbl_Orders
FOR EACH ROW
EXECUTE FUNCTION check_stock();