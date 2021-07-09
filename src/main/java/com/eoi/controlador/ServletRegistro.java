package com.eoi.controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eoi.modelo.Usuario;
import com.eoi.modelo.UsuarioDAO;


@WebServlet("/ServletRegistro")
public class ServletRegistro extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String opcion = request.getParameter("opcion");
		String nombre_miem = request.getParameter("nombre_miem");
		String contrase�a = request.getParameter("contrase�a");
		String telefono = request.getParameter("telefono");
		String email = request.getParameter("email");
		
		String destPage="index.html";
		
		
		Usuario user = new Usuario(nombre_miem, contrase�a, telefono, email);
		UsuarioDAO userdao = new UsuarioDAO();
		
		if(opcion.equals("a")) {
			userdao.Create(user);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
		dispatcher.forward(request, response);
		
	}

}
