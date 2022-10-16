package bean;

public class sinhvienbean {
	private String maSV;
	private String hoTen;
	private String diachi;
	private String email;
	private String anh;
	private String mamon;
	public sinhvienbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public sinhvienbean(String maSV, String hoTen, String diachi, String email, String anh, String mamon) {
		super();
		this.maSV = maSV;
		this.hoTen = hoTen;
		this.diachi = diachi;
		this.email = email;
		this.anh = anh;
		this.mamon = mamon;
	}
	public String getMaSV() {
		return maSV;
	}
	public void setMaSV(String maSV) {
		this.maSV = maSV;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getMamon() {
		return mamon;
	}
	public void setMamon(String mamon) {
		this.mamon = mamon;
	}
}
