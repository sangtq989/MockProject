package nhom1.connection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;



public class ConnectionClass {
	private static ConnectionClass instance;
	private Connection connection;

	private ConnectionClass() {
		Properties properties = new Properties();
		try {
			properties.load(ConnectionClass.class.getResourceAsStream("/config.properties"));
			final String driver = properties.getProperty("driver");
			final String server = properties.getProperty("server");
			final String user = properties.getProperty("user");
			final String pass = properties.getProperty("pass");
			Class.forName(driver);
			connection = DriverManager.getConnection(server, user, pass);
		} catch ( SQLException ex) {
			System.out.println("Database Connection Creation Failed : " + ex.getMessage());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		return connection;
	}

	public static ConnectionClass createConnect() throws SQLException {
		if (instance == null) {
			instance = new ConnectionClass();
		} else if (instance.getConnection().isClosed()) {
			instance = new ConnectionClass();
		}
		return instance;
	}
}
