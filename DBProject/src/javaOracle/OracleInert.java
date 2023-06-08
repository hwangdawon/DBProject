package javaOracle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class OracleInert {

	public static void main(String[] args) {
		String driver ="oracle.jdbc.driver.OracleDriver";
		String url ="jdbc:oracle:thin:@localhost:1521:xe";
		String user ="c##himedia";
		String password="himedia";
		
		
		try {
			Class.forName(driver);
			System.out.println("jdbc driver loading success.");
			Connection conn =DriverManager.getConnection(url,user,password);
			System.out.println("oracle connection success.\n");
			Statement stmt =conn.createStatement();
			//-------------------------------------------------
			String sql3 ="SELECT max(deptno) from dept";
			ResultSet rs2 =stmt.executeQuery(sql3);
			
			String ret= "";
			while(rs2.next()) {
//				System.out.print(rs2.getString("max(deptno)")+" ");
				ret =rs2.getString("max(deptno)");
			}
			int ideptret =Integer.parseInt(ret);
			ideptret +=10;
			String strdept =Integer.toString(ideptret);
			
			//----------------------------------------------------------
			String ideptno =strdept , sdname ="IT",sloc ="SEOUL";
			String sql ="INSERT INTO dept VALUES('"+ideptno +"','"+sdname+"','"+sloc+"')";
			boolean b =stmt.execute(sql);
			if(!b) {
				System.out.println("Insert success.\n");
			
			}else {
				System.out.println("Insert fail.\n");
			}
			
			String sql2 ="SELECT deptno,dname, loc FROM dept";
			ResultSet rs = stmt.executeQuery(sql2);
			while(rs.next()) {
				System.out.print(rs.getString("deptno")+"\t");
				System.out.print(rs.getString("dname")+"\t");
				System.out.println(rs.getString("loc")+" ");

			}
			
		}catch(ClassNotFoundException e) {
			System.out.println(e);
		}catch(SQLException e) {
			System.out.println(e);
		}

	}

}
