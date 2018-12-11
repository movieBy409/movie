package bean;

public class User {

	private long uid;
	private String uname;
	private String pwd;
	private String uimage;
	private String account;
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", pwd=" + pwd + ", uimage=" + uimage + ", account=" + account
				+ ", getUid()=" + getUid() + ", getUname()=" + getUname() + ", getPwd()=" + getPwd() + ", getUimage()="
				+ getUimage() + ", getAccount()=" + getAccount() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	public long getUid() {
		return uid;
	}
	public void setUid(long uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getUimage() {
		return uimage;
	}
	public void setUimage(String uimage) {
		this.uimage = uimage;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
}
