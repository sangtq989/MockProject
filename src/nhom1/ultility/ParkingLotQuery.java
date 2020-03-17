package nhom1.ultility;

public interface ParkingLotQuery {
	public static final String INSERT_PARK = "INSERT INTO parkinglotVALUES (?,?,?,?,?)";
	public static final String DELETE_PARK = "DELETE FROM parkinglot WHERE park_id=?";
	public static final String GETALL_PARK = "SELECT * FROM parkinglot";
}
