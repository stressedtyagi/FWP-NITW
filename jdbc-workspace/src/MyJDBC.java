import java.sql.*;

public class MyJDBC {
    public static void main(String[] args) {
        try {
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdatabase", "root", "");
            Statement statement = connection.createStatement();
            ResultSet  resultSet = statement.executeQuery("select * from list");
            while(resultSet.next()) {
                System.out.println(resultSet.getString("Title"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
