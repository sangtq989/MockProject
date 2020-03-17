package nhom1.model;

public class ParkingLot {
	private int parkId;
	private int parkArea;
	private String parkName;
	private String parkPlace;
	private int parkPrice;
	private String parkStatus;
	public ParkingLot() {
		super();
	}
	public ParkingLot(int parkId, int parkArea, String parkName, String parkPlace, int parkPrice, String parkStatus) {
		super();
		this.parkId = parkId;
		this.parkArea = parkArea;
		this.parkName = parkName;
		this.parkPlace = parkPlace;
		this.parkPrice = parkPrice;
		this.parkStatus = parkStatus;
	}
	public ParkingLot(int parkArea, String parkName, String parkPlace, int parkPrice, String parkStatus) {
		super();
		this.parkArea = parkArea;
		this.parkName = parkName;
		this.parkPlace = parkPlace;
		this.parkPrice = parkPrice;
		this.parkStatus = parkStatus;
	}
	public int getParkId() {
		return parkId;
	}
	public void setParkId(int parkId) {
		this.parkId = parkId;
	}
	public int getParkArea() {
		return parkArea;
	}
	public void setParkArea(int parkArea) {
		this.parkArea = parkArea;
	}
	public String getParkName() {
		return parkName;
	}
	public void setParkName(String parkName) {
		this.parkName = parkName;
	}
	public String getParkPlace() {
		return parkPlace;
	}
	public void setParkPlace(String parkPlace) {
		this.parkPlace = parkPlace;
	}
	public int getParkPrice() {
		return parkPrice;
	}
	public void setParkPrice(int parkPrice) {
		this.parkPrice = parkPrice;
	}
	public String getParkStatus() {
		return parkStatus;
	}
	public void setParkStatus(String parkStatus) {
		this.parkStatus = parkStatus;
	}
	@Override
	public String toString() {
		return "ParkingLot [parkId=" + parkId + ", parkArea=" + parkArea + ", parkName=" + parkName + ", parkPlace="
				+ parkPlace + ", parkPrice=" + parkPrice + ", parkStatus=" + parkStatus + "]";
	}
	
}
