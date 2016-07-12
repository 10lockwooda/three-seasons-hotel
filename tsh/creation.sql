CREATE DATABASE IF NOT EXISTS threeseasons;
USE threeseasons;

CREATE TABLE IF NOT EXISTS customers
(
    customerID INT(11) AUTO_INCREMENT PRIMARY KEY
    , title CHAR(6) NOT NULL
    , first_name CHAR(20) NOT NULL
    , surname CHAR(20) NOT NULL
    , house_number INT(5) NOT NULL
    , street CHAR(25) NOT NULL
    , apartment_number INT(3)
    , town CHAR(66) NOT NULL
    , postcode CHAR(8) NOT NULL
    , county CHAR(30) NOT NULL
    , mobile_number CHAR(12) NOT NULL
    , landline_number CHAR(12) NOT NULL
);

CREATE TABLE IF NOT EXISTS rooms
(
    roomID INT(11) AUTO_INCREMENT PRIMARY KEY
    , room_number INT(3) NOT NULL
    , occupancy INT(2) NOT NULL
    , bed_type CHAR(15) NOT NULL
    , shower TINYINT(1) NOT NULL
    , jacuzzi TINYINT(1) NOT NULL
    , sea_view TINYINT(1) NOT NULL
    , family_room TINYINT(1) NOT NULL
    , honeymoon_room TINYINT(1) NOT NULL
    , floor_number INT(2) NOT NULL
    , cost INT(4) NOT NULL
    , CONSTRAINT chk_roomNumber CHECK (room_number > 0)
    , CONSTRAINT chk_occupancy CHECK (occupancy > 0)
);

CREATE TABLE IF NOT EXISTS bookings
(
    bookingID INT(11) AUTO_INCREMENT PRIMARY KEY
    , customerID INT(11) FOREIGN KEY REFERENCES customers(customerID)
    , roomID INT(11) FOREIGN KEY REFERENCES rooms(roomID)
    , ETA DATE NOT NULL
    , ETD DATE NOT NULL
    , paid TINYINT(1) NOT NULL
    , CONSTRAINT chk_dates CHECK (ETD > ETA)
);