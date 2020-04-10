package datos;

import java.awt.Image;
import java.io.InputStream;
import java.sql.*;
import utilidades.Excepcion;
import entidades.*;

public class DatosPersona {
	
	public Persona buscaPersona(String nombre){
		Persona p = null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		try {
			stmt = Conexion.getInstancia().getConn().prepareStatement(
					"SELECT * FROM personas WHERE nombre = ?;", PreparedStatement.RETURN_GENERATED_KEYS);
			stmt.setString(1, nombre);
			rs= stmt.executeQuery();
			if(rs!=null && rs.next()){
				p = new Persona();
				p.setNombre(rs.getString("nombre"));
				p.setFechaNac(rs.getString("fechaNac"));
				p.setTelefono(rs.getString("telefono"));
			}
			else {
				p = new Persona();
				p.setNombre("noExiste");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Excepcion e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				Conexion.getInstancia().releaseConn();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Excepcion e) {
				e.printStackTrace();
			}
		}
		return p;
	}
}
