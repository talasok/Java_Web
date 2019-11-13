package Bo;

import java.util.ArrayList;

import Bean.loaiBean;
import Dao.loaiDao;

public class loaiBo {
	loaiDao L=new loaiDao();
	public ArrayList<loaiBean> getLoai(){
		ArrayList<loaiBean> ds=new ArrayList<loaiBean>();
		ds=L.getLoai();
		return ds;
	}
	public ArrayList<loaiBean> getLoai1() {
		ArrayList<loaiBean> ds=new ArrayList<loaiBean>();
		try {
			ds=L.getLoai1();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ds;
	}
}
