package datos;

import java.sql.*;
import utilidades.Excepcion;

public class Conexion {
	private String dbDriver="com.mysql.cj.jdbc.Driver";
	private String host="localhost";
	private String port="3306";
	private String user="root";
	private String pass="root";
	private String db="personas";
	private String dbType="mysql";
	private Connection conn;
	private int cantConn=0;
	
	public Conexion() throws Excepcion
	{
		try
		{
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			throw new Excepcion("Error del Driver JDBC", e);
		}
	}
	
	private static Conexion instancia;
	
	public static Conexion getInstancia() throws Excepcion{
		if (instancia==null){
			instancia = new Conexion();
		}
		return instancia;
	}
	
	public Connection getConn() throws Excepcion{
		try {
			if(conn==null || conn.isClosed()){
				conn = DriverManager.getConnection(
						"jdbc:"+dbType+"://"+host+":"+port+"/"+
						db+"?user="+user+"&password="+pass);
				cantConn++;
			}
		} catch (SQLException e) {
			new Excepcion("Error al conectar a la DB", e);
			e.printStackTrace();

		}
		return conn;
	}
	
	public void releaseConn() throws Excepcion{
		try {
			cantConn--;
			if(cantConn==0){
				conn.close();
			}
		} catch (SQLException e) {
			throw new Excepcion("Error al cerrar conexión", e);
		}
		
	}
}
