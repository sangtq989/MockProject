package nhom1.servlet_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nhom1.dao.CarDAO;
import nhom1.dao.ParkingLotDAO;
import nhom1.dao.TicketDAO;
import nhom1.model.Ticket;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/TicketServlet")
public class TicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TicketDAO dao;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public void init() {
		dao = new TicketDAO();
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
				listTicket(request, response);
				break;
			case "ADD":
				addTicket(request, response);
				break;
			case "LOAD":
				loadTicket(request, response);
				break;
			case "UPDATE":
				updateTicket(request, response);
				break;
			case "DELETE":
				deleteTicket(request, response);
				break;
			default:
				listTicket(request, response);
			}
		} catch (Exception exc) {
			throw new ServletException(exc);
		}

	}

	private void deleteTicket(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int ticketId = Integer.parseInt(request.getParameter("ticketId"));
		dao.deleteTicket(ticketId);
		listTicket(request, response);
	}

	private void updateTicket(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void loadTicket(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void addTicket(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String bookingTime = request.getParameter("bookingTime");
		String customerName = request.getParameter("customerName");
		String licensePlate = request.getParameter("licensePlate");
		int tripId = Integer.parseInt(request.getParameter("tripId"));
		Ticket t = new Ticket(bookingTime, customerName, licensePlate, tripId);
		dao.addTicket(t);
		listTicket(request, response);
	}

	private void listTicket(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			List<Ticket> list = dao.getAllTicket();
			request.setAttribute("LIST_TICKET", list);
			// DIEN FILE JSP
			RequestDispatcher dispatcher = request.getRequestDispatcher("");
			dispatcher.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
