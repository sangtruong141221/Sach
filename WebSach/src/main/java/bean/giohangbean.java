package bean;

public class giohangbean {
	private String masach;
	private String tensach;
	private long soluong;
	private long giasach;
	private long thanhtien;
	private String anh;
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public long getSoluong() {
		return soluong;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public long getGiasach() {
		return giasach;
	}
	public void setGiasach(long giasach) {
		this.giasach = giasach;
	}
	public long getThanhtien() {
		return soluong*giasach;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public giohangbean(String masach, String tensach, long soluong, long giasach, String anh) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.soluong = soluong;
		this.giasach = giasach;
		this.thanhtien = soluong*giasach;
		this.anh = anh;
	}
	public giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
