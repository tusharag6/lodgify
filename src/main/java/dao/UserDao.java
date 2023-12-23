package dao;
import connection.ConnectionProvider;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import pojo.User;
public class UserDao {
    Connection connection = ConnectionProvider.getConnection();
    PreparedStatement smt;
    public void register(User user) throws SQLException {
        final String query = "insert into user (userName,userEmail,userPassword) values(?,?,?)";
        smt = connection.prepareStatement(query);
        smt.setString(1,user.getUserName());
        smt.setString(2,user.getUserEmail());
        smt.setString(3,user.getUserPassword());
        int r = smt.executeUpdate();
        if( r > 0 ){
            System.out.println("Inserted");
        }
    }
    public boolean checkEmail(User user) throws SQLException {
        final String query = "select * from user where userEmail = ?";
        smt = connection.prepareStatement(query);
        smt.setString(1,user.getUserEmail());
        ResultSet r = smt.executeQuery();
        return !r.next();
    }
    public boolean login(User user) throws SQLException {
        final String query = "select * from user where userEmail = ? and userPassword = ?";
        smt = connection.prepareStatement(query);
        smt.setString(1,user.getUserEmail());
        smt.setString(2,user.getUserPassword());
        ResultSet r = smt.executeQuery();
        return r.next();
    }
}

