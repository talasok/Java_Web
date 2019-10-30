package Dao;

import java.util.ArrayList;

import Bean.loaiBean;
import Bean.sachbean;

public class loaiDao {
	public ArrayList<loaiBean> getLoai(){
		ArrayList<loaiBean> ds=new ArrayList<loaiBean>();
		ds.add(new loaiBean("L1", "IT","csdl,ctdl,java"));
		ds.add(new loaiBean("L2", "khoi a","hoa,toan,ly"));
		ds.add(new loaiBean("L3", "number","1,2,4"));
		ds.add(new loaiBean("L4", "lo","alo,blo,clo"));
		ds.add(new loaiBean("L5", "char","t,c,d"));
		return ds;
	}
//	public ArrayList<sachbean> getsachl(ArrayList<loaiBean> dsloai){
//		ArrayList<sachbean> ds1=new ArrayList<sachbean>();
//		return ds1;
//	}
}
