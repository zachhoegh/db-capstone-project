CREATE PROCEDURE `CheckBooking` (IN chkDate date, IN tablenumber INT)
BEGIN
DECLARE BookingCount INT;
SELECT COUNT(BookingID) INTO BookingCount
FROM Bookings
WHERE BookingDate = chkDate AND TableNo = tablenumber;
IF BookingCount > 0 THEN
SELECT " Table is already booked" as Message;
else
SELECT "Table is available" as Message;
END IF;
END