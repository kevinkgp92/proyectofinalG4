package com.eoi.modelo;

public class Usuario {
	private int id_miembro;
	private String nombre_miem;
	private String contrase�a;
	private int telefono;
	private String email;
	private String rol;
	
	
	public Usuario() {
		super();
	}
	
	
	public Usuario(int id_miembro, String nombre_miem, String contrase�a, int telefono, String email, String rol) {
		
		super();
		this.id_miembro = id_miembro;
		this.nombre_miem = nombre_miem;
		this.contrase�a = contrase�a;
		this.telefono = telefono;
		this.email = email;
		this.rol = rol;
		
	}


	public int getId_miembro() {
		return id_miembro;
	}


	public void setId_miembro(int id_miembro) {
		this.id_miembro = id_miembro;
	}


	public String getNombre_miem() {
		return nombre_miem;
	}


	public void setNombre_miem(String nombre_miem) {
		this.nombre_miem = nombre_miem;
	}


	public String getContrase�a() {
		return contrase�a;
	}


	public void setContrase�a(String contrase�a) {
		this.contrase�a = contrase�a;
	}


	public int getTelefono() {
		return telefono;
	}


	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getRol() {
		return rol;
	}


	public void setRol(String rol) {
		this.rol = rol;
	}


	@Override
	public String toString() {
		return "Usuario id_miembro: " + id_miembro + ", nombre_miem: " + nombre_miem + ", contrase�a: " + contrase�a
				+ ", telefono: " + telefono + ", email: " + email + ", rol: " + rol;
	}
	
	
}