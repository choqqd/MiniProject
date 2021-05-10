package projectVO;
//티켓VO
public class TicetingVO {
	private int Ticket_Id;
	private String Show_Code;
	private String Concert_Hall_Code;
	private String Member_Code;

	public int getTicket_Id() {
		return Ticket_Id;
	}

	public void setTicket_Id(int ticket_Id) {
		Ticket_Id = ticket_Id;
	}

	public String getShow_Code() {
		return Show_Code;
	}

	public void setShow_Code(String show_Code) {
		Show_Code = show_Code;
	}

	public String getConcert_Hall_Code() {
		return Concert_Hall_Code;
	}

	public void setConcert_Hall_Code(String concert_Hall_Code) {
		Concert_Hall_Code = concert_Hall_Code;
	}

	public String getMember_Code() {
		return Member_Code;
	}

	public void setMember_Code(String member_Code) {
		Member_Code = member_Code;
	}

}
