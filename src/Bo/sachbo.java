package Bo;

import java.util.ArrayList;

import Bean.sachbean;
import Dao.sachdao;

public class sachbo {
	sachdao sdao= new sachdao();
	public ArrayList<sachbean> getsach(){
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		ds=sdao.getsach();
		return ds;
		
	}
}
