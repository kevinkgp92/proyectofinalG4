package com.eoi.servicios;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.eoi.modelo.Viajes;

public class BuscadorDAO {
	Connection con; 
	PreparedStatement pst; 
	ResultSet rs; 
	
	public List<Viajes> busqueda(String provincia, String comunidad, String tipoTurismo) {
		
		List<Viajes> listaViajes = new ArrayList<Viajes>();
		Viajes viaje;
		
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
				viaje = new Viajes(rs.getString("viaje_foto"),rs.getString("viaje_boton"),rs.getString("viaje_descripcion"),rs.getString("viaje_titulo")); 
				listaViajes.add(viaje);
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
