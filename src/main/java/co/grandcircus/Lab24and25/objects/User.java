package co.grandcircus.Lab24and25.objects;

public class User {
	
	private Long id;
	private String fName;
	private String lName;
	private String email;
	private Long pNumber;
	private String pWord;
	
	
	public User() {
		super();
	}
	
	


	public User(String fName, String lName, String email, Long pNumber, String pWord) {
		super();
		this.fName = fName;
		this.lName = lName;
		this.email = email;
		this.pNumber = pNumber;
		this.pWord = pWord;
	}




	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getfName() {
		return fName;
	}


	public void setfName(String fName) {
		this.fName = fName;
	}


	public String getlName() {
		return lName;
	}


	public void setlName(String lName) {
		this.lName = lName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public Long getpNumber() {
		return pNumber;
	}


	public void setpNumber(Long pNumber) {
		this.pNumber = pNumber;
	}


	public String getpWord() {
		return pWord;
	}


	public void setpWord(String pWord) {
		this.pWord = pWord;
	}


	@Override
	public String toString() {
		return "userData [id=" + id + ", fName=" + fName + ", lName=" + lName + ", email=" + email + ", pNumber="
				+ pNumber + "]";
	}
	
	

}
