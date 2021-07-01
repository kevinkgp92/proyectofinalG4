package com.eoi.servicios;

import java.sql.Connection;

import com.eoi.modelo.AdminDAO;

public class AdminService {
	private Connection con;
	AdminDAO repository;
	
	public AdminService() {
		
		super();
		this.repository = new AdminDAO();
	}
	
	
	
}
