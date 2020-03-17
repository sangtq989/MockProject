package test;

import java.sql.SQLException;

import nhom1.connection.ConnectionClass;
import nhom1.dao.CarDAO;

public class Test {

	public static void main(String[] args) throws SQLException {
		ConnectionClass.createConnect();
		CarDAO testCar = new CarDAO();
		System.out.println(ConnectionClass.createConnect().toString());
		System.out.println(testCar.getAllCar().toString());
	}

}
