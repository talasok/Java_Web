package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Bean.test;

public class testDao {
	public ArrayList<test> ds = new ArrayList<test>();
	public ArrayList<test> gettest() throws Exception{
		String sql="select * from ThongTin";
		PreparedStatement cmd = DungChung.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		while(rs.next()) {
			String ma=rs.getString("Ma");
			String ten=rs.getString("Ten");
			String diachi=rs.getString("DiaChi");
			
			test test=new test(ma,ten,diachi);
			ds.add(test);
		}
		rs.close();
		return ds;
	}
}
