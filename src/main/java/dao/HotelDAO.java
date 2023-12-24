package dao;

import connection.ConnectionProvider;
import pojo.Hotel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HotelDAO {
    static Connection connection = ConnectionProvider.getConnection();
    // Create operation
    public static boolean addHotel(Hotel hotel) {
        String query = "INSERT INTO hotels (hotelName, hotelAddress, hotelRating, hotelAmenities, roomPrice) " +
                "VALUES (?, ?, ?, ?, ?)";

        try{
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, hotel.getHotelName());
            statement.setString(2, hotel.getHotelAddress());
            statement.setDouble(3, hotel.getHotelRating());
            statement.setString(4, hotel.getHotelAmenities());
            statement.setInt(5, hotel.getRoomPrice());

            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Read operation
    public static List<Hotel> getAllHotels() {
        List<Hotel> hotels = new ArrayList<>();
        String query = "SELECT * FROM hotels";

        try (PreparedStatement statement = connection.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Hotel hotel = new Hotel();
                hotel.setHotelId(resultSet.getInt("hotelId"));
                hotel.setHotelName(resultSet.getString("hotelName"));
                hotel.setHotelAddress(resultSet.getString("hotelAddress"));
                hotel.setHotelRating(resultSet.getDouble("hotelRating"));
                hotel.setHotelAmenities(resultSet.getString("hotelAmenities"));
                hotel.setRoomPrice(resultSet.getInt("roomPrice"));

                hotels.add(hotel);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return hotels;
    }

    public static Hotel getSingleHotel(int hotelId) {
        String query = "SELECT * FROM hotels WHERE hotelId=?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, hotelId);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    Hotel hotel = new Hotel();
                    hotel.setHotelName(resultSet.getString("hotelName"));
                    hotel.setHotelAddress(resultSet.getString("hotelAddress"));
                    hotel.setHotelRating(resultSet.getDouble("hotelRating"));
                    hotel.setHotelAmenities(resultSet.getString("hotelAmenities"));
                    hotel.setRoomPrice(resultSet.getInt("roomPrice"));

                    return hotel;
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null; // Return null if the hotel with the given ID is not found
    }

    // Update operation
    public static boolean updateHotel(Hotel hotel) {
        String query = "UPDATE hotels SET hotelName=?, hotelAddress=?, hotelRating=?, hotelAmenities=?, roomPrice=? " +
                "WHERE hotelId=?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, hotel.getHotelName());
            statement.setString(2, hotel.getHotelAddress());
            statement.setDouble(3, hotel.getHotelRating());
            statement.setString(4, hotel.getHotelAmenities());
            statement.setInt(5, hotel.getRoomPrice());
            statement.setInt(6, hotel.getHotelId());

            int rowsUpdated = statement.executeUpdate();
            return rowsUpdated > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Delete operation
    public static boolean deleteHotel(int hotelId) {
        String query = "DELETE FROM hotels WHERE hotelId=?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, hotelId);

            int rowsDeleted = statement.executeUpdate();
            return rowsDeleted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

//    find hotels by location
public static List<Hotel> findHotels(String searchTerm) {
    List<Hotel> hotels = new ArrayList<>();
    try {
        String query = "SELECT * FROM hotels WHERE hotelName LIKE ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, "%" + searchTerm + "%");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Hotel hotel = new Hotel();
                hotel.setHotelId(resultSet.getInt("hotelId"));
                hotel.setHotelName(resultSet.getString("hotelName"));
                hotel.setHotelAddress(resultSet.getString("hotelAddress"));
                hotel.setHotelRating(resultSet.getDouble("hotelRating"));
                hotel.setHotelAmenities(resultSet.getString("hotelAmenities"));
                hotel.setRoomPrice(resultSet.getInt("roomPrice"));
                hotels.add(hotel);
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return hotels;
}

}
