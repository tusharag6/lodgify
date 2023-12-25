package pojo;

public class User {
    private int userId;
    private String userName;
    private String userEmail;
    private String userPassword;
    //getter methods
    public int getUserId(){
        return userId;
    }
    public String getUserName(){
        return userName;
    }
    public String getUserEmail(){
        return userEmail;
    }
    public String getUserPassword(){
        return userPassword;
    }

    //setter methods
    public void setUserId(int userId){
        this.userId=userId;
    }
    public void setUserName(String userName){
        this.userName=userName;
    }
    public void setUserEmail(String userEmail){
        this.userEmail=userEmail;
    }
    public void setUserPassword(String userPassword){
        this.userPassword=userPassword;
    }
}
