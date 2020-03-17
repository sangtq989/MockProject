package nhom1.ultility;

public interface EmployeeQuery {
	public static final String INSERT_EMP = "INSERT INTO employees VALUES(?,?,?,?,?,?,?,?,?)";
	public static final String DELETE_EMP = "DELETE FROM employees WHERE employee_id=?";
	public static final String GETALL_EMP = "SELECT * FROM employees";
}
