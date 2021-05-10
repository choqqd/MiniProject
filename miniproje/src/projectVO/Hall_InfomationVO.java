package projectVO;
//홀정보 공연장VO
public class Hall_InfomationVO {
	private String Hall_Name;
	private String Concert_Hall_Code;
	private String Hall_Seat;
	
	public String getHall_Name() {
		return Hall_Name;
	}
	public void setHall_Name(String hall_Name) {
		Hall_Name = hall_Name;
	}
	public String getConcert_Hall_Code() {
		return Concert_Hall_Code;
	}
	public void setConcert_Hall_Code(String concert_Hall_Code) {
		Concert_Hall_Code = concert_Hall_Code;
	}
	public String getHall_Seat() {
		return Hall_Seat;
	}
	public void setHall_Seat(String hall_Seat) {
		Hall_Seat = hall_Seat;
	}
	public String getHall_size() {
		return Hall_size;
	}
	public void setHall_size(String hall_size) {
		Hall_size = hall_size;
	}
	private String Hall_size;
}
