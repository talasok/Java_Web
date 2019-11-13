package Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DungChung {
	public static Connection cn;
	public void KetNoi() {
		try{
			//nap database
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				System.out.println("da xac nhan");
			//ket noi voi csld
				cn=DriverManager.getConnection("jdbc:sqlserver://DESKTOP-QL9PITB\\SQLEXPRESS:1433;databaseName=QlSach;user=sa;password=123456");
				System.out.println("da xac nhan");
			}catch(Exception e){ 
				e.printStackTrace();
				
				System.out.println(e.getMessage());
			}
	}
}
