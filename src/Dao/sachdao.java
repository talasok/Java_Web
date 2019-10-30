package Dao;

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

}
