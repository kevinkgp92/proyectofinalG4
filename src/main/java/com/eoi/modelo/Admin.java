package com.eoi.modelo;

public class Admin {
	
	private int id_miembro;
	private String nombre_miem;
	private String contrase�a;
	private int telefono;
	private String email;
	private String rol;
	private String viajes_realizados;
	
	

	public Admin() {
		
		super();
	}
	
	public Admin(int id_miembro, String nombre_miem, String contrase�a, int telefono, String email, String rol, String viajes_realizados) {
		
		super();
		this.id_miembro = id_miembro;
		this.nombre_miem = nombre_miem;
		this.contrase�a = contrase�a;
		this.telefono = telefono;
		this.email = email;
		this.rol = rol;
		this.viajes_realizados = viajes_realizados;
		
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

	
	public String getViajes_realizados() {
		return viajes_realizados;
	}

	public void setViajes_realizados(String viajes_realizados) {
		this.viajes_realizados = viajes_realizados;
	}

	@Override
	public String toString() {
		return "Admin id_miembro: " + id_miembro + "nombre_miem: " + nombre_miem + ", contrase�a: " + contrase�a + ", telefono: " + telefono
				+ ", email: " + email + ", rol: " + rol;
	}
	
	
	
	

}
