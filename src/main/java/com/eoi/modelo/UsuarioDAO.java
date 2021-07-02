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
		
		Usuario e = null;
		
		String sql = "SELECT * FROM t_miembros WHERE email = ? AND contraseña = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, email);
		pst.setString(2, contraseña);
		
		rs = pst.executeQuery();
		
		if (rs.next()) {
			
			e = new Usuario();
			e.setEmail(email);
			e.setContraseña(contraseña);
			e.setNombre_miem(rs.getString("nombre_miem"));
			e.setRol(rs.getString("rol"));
			
		}
		
		return e;
		
	}
	
	public boolean Create(Usuario user) {
		//Número de filas que van a ser modificadas después del create
		int rows=0;
		//String en el que guardamos la Sql
		String sql = "INSERT INTO t_miembros (id_miembro, nombre_miem, contraseña, telefono, email, rol, viajes_realizados) VALUES ( ?, ?, ?, ?, ?, ?, ?)";
		try {
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setInt(1, user.getId_miembro());
		pst.setString(2, user.getNombre_miem());
		pst.setString(3, user.getContraseña());
		pst.setInt(4, user.getTelefono());
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
	
	
	public boolean Delete(int id_miembro) {
		
		int rows = 0;
		
		String sql = "DELETE FROM t_miembros WHERE id_miembro = ?";
		try {
			con = Conexion.getInstance().getConnection();
			pst= con.prepareStatement(sql);
			pst.setInt(1, id_miembro);
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
	
	public boolean Update(int id_miembro, String nombre_miem, String contraseña, int telefono, String email, String rol, String viajes_realizados) {
		
		int rows = 0;
		String sql = "UPDATE t_miembros SET nombre_miem = ?, contraseña = ?, telefono = ?, email = ?, rol = ?, viajes_realizados = ? WHERE id_miembro = ?";
		
		try {
			con = Conexion.getInstance().getConnection();
			pst= con.prepareStatement(sql);
			pst.setString(1, nombre_miem);
			pst.setString(2, contraseña);
			pst.setInt(3, telefono);
			pst.setString(4, email);
			pst.setString(5, rol);
			pst.setString(6, viajes_realizados);
			pst.setInt(7, id_miembro);
			System.out.println("Ejecutando la query: " + sql);
			rows = pst.executeUpdate();
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
	
	public Usuario findById(int id_miembro) {
		//El interrogante significa que es el argumento que vamos a tener que recibir aun no lo conocemos
		
		Usuario user = new Usuario();
		String sql = "SELECT * FROM t_miembros WHERE id_miembro = ?";
		
		try {
			con=Conexion.getInstance().getConnection();
			pst= con.prepareStatement(sql);
			pst.setInt(1, id_miembro);
			rs=pst.executeQuery();
			
			while(rs.next()) {
				
				user.setId_miembro(rs.getInt("id_miembro"));
				user.setNombre_miem(rs.getString("nombre_miembro"));
				user.setContraseña(rs.getString("contraseña"));
				user.setTelefono(rs.getInt("telefono"));
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
	
	public Usuario ConsultaViaje(int id_miembro) {
		
		Usuario user = new Usuario();
		String sql = "SELECT nombre_miembro AND viajes_realizados FROM t_miembros WHERE id_miembro = ?";
		try {
			con=Conexion.getInstance().getConnection();
			pst= con.prepareStatement(sql);
			pst.setInt(1, id_miembro);
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
	
	public boolean CambioRol(int id_miembro, String rol) {
		
		
		String sql = "UPDATE t_miembros SET rol = ? WHERE id_miembro = ?";
		
		try {
			con=Conexion.getInstance().getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, rol);
			pst.setInt(2, id_miembro);
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
