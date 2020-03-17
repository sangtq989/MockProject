package nhom1.ultility;

public interface TripQuery {
	public static final String INSERT_TRIP = "INSERT INTO trip VALUE(?,?,?,?,?,?)";
	public static final String GETALL_TRIP = "SELECT * FROM trip";
	public static final String DELETE_TRIP = "DELETE FROM trip WHERE trip_id=?";
}
