package dao;
import connection.ConnectionProvider;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
}

