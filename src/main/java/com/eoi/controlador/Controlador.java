package com.eoi.controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eoi.modelo.Usuario;
import com.eoi.modelo.UsuarioDAO;


@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	
    public Controlador() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String opcion = request.getParameter("opcion");
		String id_miem = request.getParameter("id_miembro");
		
		UsuarioDAO userdao = new UsuarioDAO();
		Usuario user = null;
		String destPage = "datosmiembros.jsp";
		
		switch(opcion) {
		
		case "e" :
			destPage = "editardepartamento.jsp";
		try {
			user = userdao.Update(id_miem);
			request.setAttribute("user", user);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
			
		break;
		
		case "b" :
		try {
			userdao.Delete(id_miem);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
			
		break;
	}
		
	}

	
	

}
