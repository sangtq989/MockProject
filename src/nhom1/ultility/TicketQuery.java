package nhom1.ultility;

public interface TicketQuery {
	public static final String INSERT_TICKET = "INSERT INTO ticket VALUES(?,?,?,?)";
	public static final String GETALL_TICKET = "SELECT * FROM ticket";
	public static final String DELETE_TICKET = "DELETE FROM ticket WHERE ticket_id=?";
}
