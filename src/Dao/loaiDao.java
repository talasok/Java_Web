package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

	public ArrayList<loaiBean> getLoai1() throws Exception{
		//Ket Noi    
		 //dc.KetNoi(); 
		ArrayList<loaiBean> ds=new ArrayList<loaiBean>();
		 String sql= "select * from loai";    
		 PreparedStatement cmd= DungChung.cn.prepareStatement(sql);
		 ResultSet rs= cmd.executeQuery();    
		  
		 while(rs.next()) {
			String maloai =rs.getString("maloai") ;   
			String tenloai=rs.getString("tenloai");     
			loaiBean l= new loaiBean(maloai, tenloai);      
			ds.add(l);
		 //Them Sach vao ds    
		 }    
		 rs.close();    
		 return ds;
	 }
//	public ArrayList<sachbean> getsachl(ArrayList<loaiBean> dsloai){
//		ArrayList<sachbean> ds1=new ArrayList<sachbean>();
//		return ds1;
//	}
}
