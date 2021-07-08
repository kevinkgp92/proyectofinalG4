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


@WebServlet("/ServletEditarMiembro")
public class ServletEditarMiembro extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String opcion = request.getParameter("opcion");
		String id_miembro = request.getParameter("id_miem");
		String nombre_miem = request.getParameter("nombre_miem");
		String contraseña = request.getParameter("contraseña");
		String telefono = request.getParameter("telefono");
		String email = request.getParameter("email");
		String rol = request.getParameter("rol");	
		String v_realizados = request.getParameter("viajes_realizados");
		String destPage="datosmiembros.jsp";
		int id_miembroNum = Integer.parseInt(id_miembro);
		
		Usuario user = new Usuario(id_miembroNum, nombre_miem, contraseña, telefono, email, rol, v_realizados);
		
		UsuarioDAO userdao = new UsuarioDAO();
		request.setAttribute("usu", user);
		
		if(opcion.equals("e")) {
			userdao.Update(user);
			request.setAttribute("msg", "Tus datos han sido modificados correctamente");
		}
		
		if(opcion.equals("a")) {
			
			userdao.Create(user);
			request.setAttribute("msg", "Tus datos han sido modificados correctamente");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
		dispatcher.forward(request, response);
		
	
	}

}
