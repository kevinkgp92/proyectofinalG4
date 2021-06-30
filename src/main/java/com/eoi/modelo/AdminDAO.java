package com.eoi.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.eoi.servicios.Conexion;

public class AdminDAO {
	
	private Connection con;
	
	public boolean Create(Usuario user) {
		//Número de filas que van a ser modificadas después del create
		int rows=0;
		PreparedStatement pst = null;
		//String en el que guardamos la Sql
		String sql = "INSERT INTO t_miembros (id_miembro, nombre_miem, contraseña, telefono, email, rol) VALUES ( ?, ?, ?, ?, ?, ?)";
		try {
		//Esto hasta que no creemos la clase Usuario no se corregirá el error
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setInt(1, user.getId_miembro());
		pst.setString(2, user.getNombre_miem());
		pst.setString(3, user.getContraseña());
		pst.setInt(4, user.getTelefono());
		pst.setString(5, user.getEmail());
		pst.setString(6, user.getRol());
		
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
		PreparedStatement pst = null;
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
	
	public boolean Update(int id_miembro, String nombre_miem, String contraseña, int telefono, String email, String rol) {
		
		ResultSet rs= null;
		PreparedStatement pst = null;
		String sql = "UPDATE t_miembros SET nombre_miem = ?, contraseña = ?, telefono = ?, email = ?, rol = ? WHERE id_miembro = ?";
		
		try {
			con = Conexion.getInstance().getConnection();
			pst= con.prepareStatement(sql);
			pst.setString(1, nombre_miem);
			pst.setString(2, contraseña);
			pst.setInt(3, telefono);
			pst.setString(4, email);
			pst.setString(5, rol);
			pst.setInt(5, id_miembro);
			System.out.println("Ejecutando la query: " + sql);
			
			rs = pst.executeQuery();
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
		//El interrogante significa que es el argumento que vamos a tener que recibir por lo tanto no lo conocemos
		String sql = "SELECT * FROM t_miembros WHERE id_miembro = ?";
		PreparedStatement pst = null;
		ResultSet rs = null;
		Usuario user = new Usuario();
		
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
	
	

}
