CREATE PROCEDURE `AddBooking` (IN customerID INT, bookDate DATE, IN tablenumber INT)
BEGIN
    INSERT INTO Bookings (CustomerID, BookingDate, TableNo)
    VALUES (customerID, bookDate, tablenumber);
END;