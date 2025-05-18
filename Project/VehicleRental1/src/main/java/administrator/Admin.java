package administrator;

public class Admin {
	int AdminID;
	String email;
	String password;
	String nic;
	String profilePic;
	
	public int getAdminID() {
		return AdminID;
	}
	public void setAdminID(int adminID) {
		AdminID = adminID;
	}
	public String getNic() {
		return nic;
	}
	public String getProfilePic() {
		return profilePic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public void setProfilePic(String profilePic) {
		this.profilePic = profilePic;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}

