package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getsach(){
		ArrayList<sachbean> ds=new ArrayList<sachbean>();
		ds.add(new sachbean("s1", "csdl","nhha1", (long)65000,"b1.jpg"));
		ds.add(new sachbean("s2", "csd2","nhha2", (long)65000,"b2.jpg"));
		ds.add(new sachbean("s3", "csd3","nhha3", (long)65000,"b3.jpg"));
		ds.add(new sachbean("s4", "csd4","nhha4", (long)65000,"b4.jpg"));
		ds.add(new sachbean("s5", "csd5","nhha5", (long)65000,"b5.jpg"));
		ds.add(new sachbean("s6", "csd6","nhha6", (long)65000,"b6.jpg"));
		return ds;
	}
	public ArrayList<sachbean> getSach() throws Exception{ 
		//dc.KetNoi(); 
		String sql="select * from sach";    
		PreparedStatement cmd= DungChung.cn.prepareStatement(sql);    
		ResultSet r= cmd.executeQuery();    
		ArrayList<sachbean> ds= new ArrayList<sachbean>();    
		while(r.next()) {
			String masach=r.getString("masach");  
			String tensach=r.getString("tensach");   
			String tacgia=r.getString("tacgia");    
			long gia=r.getLong("gia");    
			String anh=r.getString("anh");    
			sachbean s= new sachbean(masach, tensach,tacgia, gia, anh);
			ds.add(s);//Them Sach vao ds    
		}    
		r.close();    
		return ds;
	}
	 public ArrayList<sachbean> TimSachTheoMa(String maloai) throws Exception{
		 //dc.KetNoi();   
		 String sql="select * from sach where maloai='"+ maloai+"'";   
		 PreparedStatement cmd= DungChung.cn.prepareStatement(sql); 		  
		 ResultSet r= cmd.executeQuery();      
		 ArrayList<sachbean> ds= new ArrayList<sachbean>();   
		 while(r.next()){//Duyet qua cac sach trong bang Sach(csdl)    
			 String masach=r.getString("masach");//lay ra masach    
			 String tensach=r.getString("tensach");    
			 String tacgia=r.getString("tacgia");    
			 long gia=r.getLong("gia");    
			 String anh=r.getString("anh");    
			 sachbean s= new sachbean(masach, tensach,tacgia, gia, anh);//Tao ra lop SachBean    
			 ds.add(s);//Them Sach vao ds   
			 }   
		 r.close();   
		 return ds; 
	 }
	 public ArrayList<sachbean> TimSachTheoTen(String ten) throws Exception{   
		 //Ket Noi   
		 //dc.KetNoi();   
		 String sql="select * from sach where tensach like N'%"+ten+"%' or tacgia like N'%"+ten+"%'";   
		 PreparedStatement cmd= DungChung.cn.prepareStatement(sql);   
		 ResultSet r= cmd.executeQuery();      
		 ArrayList<sachbean> ds= new ArrayList<sachbean>();   
		 while(r.next()){//Duyet qua cac sach trong bang Sach(csdl)    
			 String masach=r.getString("masach");//lay ra masach    
			 String tensach=r.getString("tensach");    
			 String tacgia=r.getString("tacgia");    
			 long gia=r.getLong("gia");    
			 String anh=r.getString("anh");    
			 sachbean s= new sachbean(masach, tensach,tacgia, gia, anh);//Tao ra lop SachBean    
			 ds.add(s);//Them Sach vao ds   
			 }   
		 r.close();   
		 return ds;
	 }
}
