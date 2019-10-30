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
}
