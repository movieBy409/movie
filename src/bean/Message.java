package bean;

import java.sql.Timestamp;

public class Message {
	
	private long mid;
	private long movieid;
	private long uid1;
	private String msg;
	private Timestamp mdate;
	public long getMid() {
		return mid;
	}
	public void setMid(long mid) {
		this.mid = mid;
	}
	public long getMovieid() {
		return movieid;
	}
	public void setMovieid(long movieid) {
		this.movieid = movieid;
	}
	public long getUid1() {
		return uid1;
	}
	public void setUid1(long uid1) {
		this.uid1 = uid1;
	}
	@Override
	public String toString() {
		return "Message [mid=" + mid + ", movieid=" + movieid + ", uid1=" + uid1 + ", msg=" + msg + ", mdate=" + mdate
				+ "]";
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Timestamp getMdate() {
		return mdate;
	}
	public void setMdate(Timestamp mdate) {
		this.mdate = mdate;
	}

}
