package Bo;

import java.util.ArrayList;

import Bean.sachbean;
import Dao.sachdao;

public class sachbo {
	sachdao s= new sachdao();
	public ArrayList<sachbean> ds= new ArrayList<sachbean>();
	public ArrayList<sachbean> getsach(){
		//ArrayList<sachbean> ds = new ArrayList<sachbean>();
		ds=s.getsach();
		return ds;
	}
	public ArrayList<sachbean> getSach() {      
		try {
			ds= s.getSach();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}    
		return ds;
	}    
	public ArrayList<sachbean> TimSachTheoMa(String maloai) {      
		try {
			ds= s.TimSachTheoMa(maloai);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return ds;
	}   
	public ArrayList<sachbean> TimSachTheoTen(String ten) {      
		try {
			ds= s.TimSachTheoTen(ten);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return ds;
	}
}
