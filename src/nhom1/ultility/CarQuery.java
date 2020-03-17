package nhom1.ultility;

public interface CarQuery {
	public static final String INSERT_CAR = "INSERT INTO car VALUES (?,?,?,?,?)";
	public static final String DELETE_CAR = "DELETE FROM car WHERE car_license_plate=?";
	public static final String GETALL_CAR = "SELECT * FROM car";
}
