package Bo;

import java.util.ArrayList;

import Bean.test;
import Dao.testDao;

public class testBo {
	testDao t= new testDao();
	public ArrayList<test> ds = new ArrayList<test>();
	public ArrayList<test> gettest() throws Exception{
		ds=t.gettest();
		return ds;
	}
}
