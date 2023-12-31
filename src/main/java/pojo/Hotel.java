package pojo;

public class Hotel {
    private int hotelId;
    private String hotelName;
    private String hotelAddress;
    private String hotelDescription;
    private String hotelRoomPhotoUrl;
    private String hotelPhotoUrl;
    private double hotelRating;
    private String hotelAmenities;
    private int roomPrice;

    // Getters and setters

    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    public String getHotelName() {
        return hotelName;
    }

    public void setHotelName(String hotelName) {
        this.hotelName = hotelName;
    }

    public String getHotelAddress() {
        return hotelAddress;
    }

    public void setHotelAddress(String hotelAddress) {
        this.hotelAddress = hotelAddress;
    }

    public String getHotelDescription() {
        return hotelDescription;
    }

    public void setHotelDescription(String hotelDescription) {
        this.hotelDescription = hotelDescription;
    }

    public String getHotelRoomPhotoUrl() {
        return hotelRoomPhotoUrl;
    }

    public void setHotelRoomPhotoUrl(String hotelRoomPhotoUrl) {
        this.hotelRoomPhotoUrl = hotelRoomPhotoUrl;
    }

    public String getHotelPhotoUrl() {
        return hotelPhotoUrl;
    }

    public void setHotelPhotoUrl(String hotelPhotoUrl) {
        this.hotelPhotoUrl = hotelPhotoUrl;
    }

    public double getHotelRating() {
        return hotelRating;
    }

    public void setHotelRating(double hotelRating) {
        this.hotelRating = hotelRating;
    }

    public String getHotelAmenities() {
        return hotelAmenities;
    }

    public void setHotelAmenities(String hotelAmenities) {
        this.hotelAmenities = hotelAmenities;
    }

    public int getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(int roomPrice) {
        this.roomPrice = roomPrice;
    }

    public Hotel(int hotelId, String hotelName, String hotelAddress, double hotelRating, String hotelAmenities, int roomPrice) {
        this.hotelId= hotelId;
        this.hotelName = hotelName;
        this.hotelAddress = hotelAddress;
        this.hotelRating = hotelRating;
        this.hotelAmenities = hotelAmenities;
        this.roomPrice = roomPrice;
    }

    public Hotel() {
    }
}

