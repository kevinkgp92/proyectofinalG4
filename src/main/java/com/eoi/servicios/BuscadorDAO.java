package com.eoi.servicios;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BuscadorDAO {
	Connection con; 
	PreparedStatement pst; 
	ResultSet rs; 
	
	public void busqueda(String provincia, String comunidad, String tipoTurismo) throws SQLException {
		String sql = "SELECT * FROM proyectofinal.t_viajes WHERE provincia LIKE '%?%' AND comunidad LIKE '%?%'  AND tipo_turismo LIKE '%?%'";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, provincia);
		pst.setString(2, comunidad);
		pst.setString(3, tipoTurismo);
		
		rs = pst.executeQuery();
		
		
	}
	
}
