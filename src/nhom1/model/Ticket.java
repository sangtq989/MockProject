package nhom1.model;


public class Ticket {
	private int tickedId;
	private String bookingTime;
	private String customerName;
	private String licensePlate;
	private int tripId;
	public Ticket() {
		super();
	}
	public Ticket(int tickedId, String bookingTime, String customerName, String licensePlate, int tripId) {
		super();
		this.tickedId = tickedId;
		this.bookingTime = bookingTime;
		this.customerName = customerName;
		this.licensePlate = licensePlate;
		this.tripId = tripId;
	}
	public Ticket(String bookingTime, String customerName, String licensePlate, int tripId) {
		super();
		this.bookingTime = bookingTime;
		this.customerName = customerName;
		this.licensePlate = licensePlate;
		this.tripId = tripId;
	}
	public int getTickedId() {
		return tickedId;
	}
	public void setTickedId(int tickedId) {
		this.tickedId = tickedId;
	}
	public String getBookingTime() {
		return bookingTime;
	}
	public void setBookingTime(String bookingTime) {
		this.bookingTime = bookingTime;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getLicensePlate() {
		return licensePlate;
	}
	public void setLicensePlate(String licensePlate) {
		this.licensePlate = licensePlate;
	}
	public int getTripId() {
		return tripId;
	}
	public void setTripId(int tripId) {
		this.tripId = tripId;
	}
	@Override
	public String toString() {
		return "Ticket [tickedId=" + tickedId + ", bookingTime=" + bookingTime + ", customerName=" + customerName
				+ ", licensePlate=" + licensePlate + ", tripId=" + tripId + "]";
	}
	
}
	