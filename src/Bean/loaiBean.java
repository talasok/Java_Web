package Bean;

import java.util.ArrayList;

public class loaiBean {
	private String maLoai;
	private String tenLoai;
	private String dssach;
	public String getMaLoai() {
		return maLoai;
	}
	public void setMaLoai(String maLoai) {
		this.maLoai = maLoai;
	}
	public String getTenLoai() {
		return tenLoai;
	}
	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}
	public String getDssach() {
		return dssach;
	}
	public void setDssach(String dssach) {
		this.dssach = dssach;
	}
	public loaiBean(String maLoai, String tenLoai, String dssach) {
		super();
		this.maLoai = maLoai;
		this.tenLoai = tenLoai;
		this.dssach = dssach;
	}
	
}
