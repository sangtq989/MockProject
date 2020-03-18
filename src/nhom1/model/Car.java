package nhom1.model;

public class Car {
	private String licensePlate;
	private String carColor;
	private String carType;
	private String company;
	private ParkingLot parkId;
	
	public Car() {
		super();
	}

	public Car(String licensePlate, String carColor, String carType, String company, ParkingLot parkId) {
		super();
		this.licensePlate = licensePlate;
		if (carColor == null) {
			this.carColor = "";
		} else {
			this.carColor = carColor;
		}
		
		if (carType == null) {
			this.carType = "";
		} else {
			this.carType = carType;
		}
		
		this.company = company;
		this.parkId = parkId;
	}

	public String getLicensePlate() {
		return licensePlate;
	}

	public void setLicensePlate(String licensePlate) {
		this.licensePlate = licensePlate;
	}

	public String getCarColor() {
		return carColor;
	}

	public void setCarColor(String carColor) {
		this.carColor = carColor;
	}

	public String getCarType() {
		return carType;
	}

	public void setCarType(String carType) {
		this.carType = carType;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public ParkingLot getParkId() {
		return parkId;
	}

	public void setParkId(ParkingLot parkId) {
		this.parkId = parkId;
	}


	

	
}
