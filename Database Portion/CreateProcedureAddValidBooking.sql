CREATE PROCEDURE `AddValidBooking` (IN chkDate DATE, IN tablenumber INT)
BEGIN
    DECLARE BookingCount INT;
    START TRANSACTION;
    SELECT COUNT(BookingID) INTO BookingCount 
    FROM Bookings 
    WHERE BookingDate = chkDate AND tablenumber = tablenumber;

    IF BookingCount > 0 THEN
    ROLLBACK;
        SELECT "Table is already booked - rollback" AS Message;
    ELSE
        INSERT INTO bookings(BookingDate, TableNo)
        VALUES (chkDate, tablenumber);
        COMMIT;
        SELECT "Table has been booked successfully - committed" AS Message;
    END IF;
END;