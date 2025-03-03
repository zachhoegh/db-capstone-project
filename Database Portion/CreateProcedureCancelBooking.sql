CREATE PROCEDURE `CancelBooking`(IN bookID INT)
BEGIN
    DELETE FROM Bookings WHERE BookingID = bookID;
END