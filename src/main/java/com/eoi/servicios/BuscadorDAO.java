package com.eoi.servicios;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BuscadorDAO {
	Connection con; 
	PreparedStatement pst; 
	ResultSet rs; 
	
	public List<String> busqueda(String provincia, String comunidad, String tipoTurismo) {
		
		List<String> listaViajes = new ArrayList<String>();
		
		String provinciamin;
		String provinciamax;
		String comunidadmin;
		String comunidadmax;
		String tipoturismomin;
		String tipoturismomax;
		
		String sql = "SELECT * FROM proyectofinal.t_viajes WHERE provincia >= ? AND provincia <= ?  AND comunidad >= ? AND comunidad <= ? AND tipo_turismo >= ? AND tipo_turismo <= ?";
		
		if (provincia.equals("Cualquier Provincia")) {
			provinciamin = "";
			provinciamax = "zzzzzzzzzzzzzzzzzzzzzzz";
			
		} else {
			provinciamin = provincia;
			provinciamax = provincia;
		}
		
		if (comunidad.equals("Cualquier Comunidad Autónoma")) {
			comunidadmin = "";
			comunidadmax = "zzzzzzzzzzzzzzzzzzzzzzz";
			
		} else {
			comunidadmin = comunidad;
			comunidadmax = comunidad;
		}
		
		if (tipoTurismo.equals("Cualquier Tipo")) {
			tipoturismomin = "";
			tipoturismomax = "zzzzzzzzzzzzzzzzzzzzzzz";
			
		} else {
			tipoturismomin = tipoTurismo;
			tipoturismomax = tipoTurismo;
		}
		
		
		try {
			con = Conexion.getInstance().getConnection();
			pst = con.prepareStatement(sql);
			
			pst.setString(1, provinciamin);
			pst.setString(2, provinciamax);
			pst.setString(3, comunidadmin);
			pst.setString(4, comunidadmax);
			pst.setString(5, tipoturismomin);
			pst.setString(6, tipoturismomax);
			
			rs = pst.executeQuery();
			while(rs.next()) {
				listaViajes.add(rs.getString("nombre_viaje"));
			}
			
			rs.close();
			pst.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return listaViajes;
		
		
	}
	
}
