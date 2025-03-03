CREATE PROCEDURE `UpdateBooking`(IN bookID INT, bookDate DATE)
BEGIN
    UPDATE Bookings SET BookingDate = bookDate WHERE BookingID = bookID;
END