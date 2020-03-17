package nhom1.servlet_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nhom1.dao.EmployeeDAO;
import nhom1.model.Employee;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeDAO empDAO;
	
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public void init() {
		 empDAO = new EmployeeDAO();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			// read the "command" parameter
			String theCommand = request.getParameter("command");
			
			// if the command is missing, then default to listing students
			if (theCommand == null) {
				theCommand = "LIST";
			}
			// route to the appropriate method
			switch (theCommand) {
			case "LIST":
				listEmployee(request, response);
				break;
			case "ADD":
				addEmployee(request, response);
				break;
			case "LOAD_ADD":
				loadEmployeeAdd(request, response);
				break;
			case "UPDATE":
				updateEmployee(request, response);
				break;
			case "DELETE":
				deleteEmployee(request, response);
				break;
			default:
				listEmployee(request, response);
			}
		} catch (Exception exc) {
			throw new ServletException(exc);
		}

	}

	private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) {
				
	}

	private void updateEmployee(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
	}

	private void loadEmployeeAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("form/form-add-employee.jsp");
		dispatcher.forward(request, response);
		
	}

	private void addEmployee(HttpServletRequest request, HttpServletResponse response) {
		
		
	}

	private void listEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Employee> list = empDAO.getAllEmployee();
		request.setAttribute("LIST_EMP", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("form/table-employee.jsp");
		dispatcher.forward(request, response);		
	}


}
