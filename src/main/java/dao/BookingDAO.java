package dao;

import connection.ConnectionProvider;
import pojo.Booking;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookingDAO {
    static Connection connection = ConnectionProvider.getConnection();

    // Create operation
    public static boolean addBooking(Booking booking) {
        String query = "INSERT INTO bookings (hotelId, userId, checkInDate, checkOutDate, numberOfGuests, numberOfRooms, totalPrice, isConfirmed) " +
                "VALUES (?, ?, ?, ?, ?, ?,?,?)";

        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, booking.getHotelId());
            statement.setInt(2, booking.getUserId());
            statement.setDate(3, new java.sql.Date(booking.getCheckInDate().getTime()));
            statement.setDate(4, new java.sql.Date(booking.getCheckOutDate().getTime()));
            statement.setInt(5, booking.getNumberOfGuests());
            statement.setInt(6, booking.getNumberOfRooms());
            statement.setDouble(7, booking.getTotalPrice());
            statement.setBoolean(8, booking.isConfirmed());

            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Read operation
    public static List<Booking> getAllBookings() {
        List<Booking> bookings = new ArrayList<>();
        String query = "SELECT * FROM bookings";

        try (PreparedStatement statement = connection.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Booking booking = new Booking();
                booking.setBookingId(resultSet.getInt("bookingId"));
                booking.setHotelId(resultSet.getInt("hotelId"));
                booking.setUserId(resultSet.getInt("userId"));
                booking.setCheckInDate(resultSet.getDate("checkInDate"));
                booking.setCheckOutDate(resultSet.getDate("checkOutDate"));
                booking.setNumberOfGuests(resultSet.getInt("numberOfGuests"));
                booking.setNumberOfRooms(resultSet.getInt("numberOfRooms"));
                booking.setTotalPrice(resultSet.getDouble("totalPrice"));
                booking.setConfirmed(resultSet.getBoolean("isConfirmed"));

                bookings.add(booking);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return bookings;
    }

    public static Booking getSingleBooking(int bookingId) {
        String query = "SELECT * FROM bookings WHERE bookingId=?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, bookingId);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    Booking booking = new Booking();
                    booking.setHotelId(resultSet.getInt("hotelId"));
                    booking.setUserId(resultSet.getInt("userId"));
                    booking.setCheckInDate(resultSet.getDate("checkInDate"));
                    booking.setCheckOutDate(resultSet.getDate("checkOutDate"));
                    booking.setNumberOfGuests(resultSet.getInt("numberOfGuests"));
                    booking.setNumberOfRooms(resultSet.getInt("numberOfRooms"));
                    booking.setTotalPrice(resultSet.getDouble("totalPrice"));
                    booking.setConfirmed(resultSet.getBoolean("isConfirmed"));

                    return booking;
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null; // Return null if the booking with the given ID is not found
    }

    // Update operation
    public static boolean updateBooking(Booking booking) {
        String query = "UPDATE bookings SET hotelId=?, userId=?, checkInDate=?, checkOutDate=?, numberOfGuests=?, numberOfRooms=?, totalPrice=?, isConfirmed=? " +
                "WHERE bookingId=?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, booking.getHotelId());
            statement.setInt(2, booking.getUserId());
            statement.setDate(3, new java.sql.Date(booking.getCheckInDate().getTime()));
            statement.setDate(4, new java.sql.Date(booking.getCheckOutDate().getTime()));
            statement.setInt(5, booking.getNumberOfGuests());
            statement.setInt(6, booking.getNumberOfRooms());
            statement.setDouble(7, booking.getTotalPrice());
            statement.setBoolean(7, booking.isConfirmed());
            statement.setInt(9, booking.getBookingId());

            int rowsUpdated = statement.executeUpdate();
            return rowsUpdated > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Delete operation
    public static boolean deleteBooking(int bookingId) {
        String query = "DELETE FROM bookings WHERE bookingId=?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, bookingId);

            int rowsDeleted = statement.executeUpdate();
            return rowsDeleted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
