package com.eoi.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.eoi.servicios.Conexion;

public class UsuarioDAO {
	
	private Connection con;
	private PreparedStatement pst;
	private ResultSet rs;
	
public Usuario login(String email, String contraseña) throws SQLException {
		
		Usuario user = null;
		
		String sql = "SELECT * FROM t_miembros WHERE email = ? AND contraseña = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, email);
		pst.setString(2, contraseña);
		
		rs = pst.executeQuery();
		
		if (rs.next()) {
			
			user = new Usuario();
			user.setEmail(email);
			user.setContraseña(contraseña);
			user.setNombre_miem(rs.getString("nombre_miem"));
			user.setRol(rs.getString("rol"));
			
		}
		
		return user;
		
	}
	
	public boolean Create(Usuario user) {
		//Número de filas que van a ser modificadas después del create
		int rows=0;
		//String en el que guardamos la Sql
		String sql = "INSERT INTO t_miembros (id_miembro, nombre_miem, contraseña, telefono, email, rol, viajes_realizados) VALUES ( ?, ?, ?, ?, ?, ?, ?)";
		try {
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, user.getId_miembro());
		pst.setString(2, user.getNombre_miem());
		pst.setString(3, user.getContraseña());
		pst.setString(4, user.getTelefono());
		pst.setString(5, user.getEmail());
		pst.setString(6, user.getRol());
		pst.setString(7, user.getViajes_realizados());
		
		rows = pst.executeUpdate();
		System.out.println("Registros afectados: " + rows);
		con.close();
		pst.close();
		return true;
		
		}catch(SQLException e){
		
			e.printStackTrace();
			return false;
		}
	}
	
	
	public boolean Delete(String id_miembro) {
		
		int rows = 0;
		
		String sql = "DELETE FROM t_miembros WHERE id_miembro = ?";
		try {
			con = Conexion.getInstance().getConnection();
			pst= con.prepareStatement(sql);
			pst.setString(1, id_miembro);
			rows= pst.executeUpdate();
			System.out.println("Registros afectados: " + rows);
			con.close();
			pst.close();
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
		
	}
	
	public void Update(Usuario user) {
		
		int rows = 0;
		String sql = "UPDATE t_miembros SET nombre_miem = ?, contraseña = ?, telefono = ?, email = ?, rol = ?, viajes_realizados = ? WHERE id_miembro = ?";
		
		try {
			con = Conexion.getInstance().getConnection();
			pst= con.prepareStatement(sql);
			pst.setString(1, user.getNombre_miem());
			pst.setString(2, user.getContraseña());
			pst.setString(3, user.getTelefono());
			pst.setString(4, user.getEmail());
			pst.setString(5, user.getRol());
			pst.setString(6, user.getViajes_realizados());
			pst.setString(7, user.getId_miembro());
			System.out.println("Ejecutando la query: " + sql);
			rows = pst.executeUpdate();
			System.out.println("Registros afectados: " + rows);
			
			con.close();
			pst.close();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
		
	}
	
	public Usuario findById(String id_miembro) {
		//El interrogante significa que es el argumento que vamos a tener que recibir aun no lo conocemos
		
		Usuario user = new Usuario();
		String sql = "SELECT * FROM t_miembros WHERE id_miembro = ?";
		
		try {
			con=Conexion.getInstance().getConnection();
			pst= con.prepareStatement(sql);
			pst.setString(1, id_miembro);
			rs=pst.executeQuery();
			
			while(rs.next()) {
				
				user.setId_miembro(rs.getString("id_miembro"));
				user.setNombre_miem(rs.getString("nombre_miembro"));
				user.setContraseña(rs.getString("contraseña"));
				user.setTelefono(rs.getString("telefono"));
				user.setEmail(rs.getString("email"));
				user.setRol(rs.getString("rol"));
				user.setViajes_realizados(rs.getString("viajes_realizados"));
			}
		
			rs.close();
			pst.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
		
		
	}
	
	public Usuario ConsultaViaje(String id_miembro) {
		
		Usuario user = new Usuario();
		String sql = "SELECT nombre_miembro AND viajes_realizados FROM t_miembros WHERE id_miembro = ?";
		try {
			con=Conexion.getInstance().getConnection();
			pst= con.prepareStatement(sql);
			pst.setString(1, id_miembro);
			rs=pst.executeQuery();
			
			while(rs.next()) {
				
				user.setNombre_miem(rs.getString("nombre_miembro"));
				user.setViajes_realizados(rs.getString("viajes_realizados"));
			}
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
	}
	
	public boolean CambioRol(String id_miembro, String rol) {
		
		
		String sql = "UPDATE t_miembros SET rol = ? WHERE id_miembro = ?";
		
		try {
			con=Conexion.getInstance().getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, rol);
			pst.setString(2, id_miembro);
			System.out.println("Ejecutando el Update: " + sql);
			pst.executeUpdate();
			
			
			con.close();
			pst.close();
			
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	
	

}
