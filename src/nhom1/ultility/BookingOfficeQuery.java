package nhom1.ultility;

public interface BookingOfficeQuery {
	public static final String INSERT_BO = "INSERT INTO bookingoffice VALUE(?,?,?,?,?,?,?);";
	public static final String DELETE_BO = "DELETE FROM bookingoffice WHERE office_id=?";
	public static final String GETALL_BO = "SELECT * FROM bookingoffice";
}
