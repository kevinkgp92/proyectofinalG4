package com.eoi.controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eoi.modelo.Usuario;
import com.eoi.modelo.UsuarioDAO;


@WebServlet("/Login")
public class Login extends HttpServlet {
	

    public Login() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String contraseña = request.getParameter("contraseña");
		
		UsuarioDAO udao = new UsuarioDAO();
		Usuario user = null;
		String pagDest = "index.html";
		
		try {
			user = udao.login(email, contraseña);
			
			//Usuario existe en la base de datos
			if(user != null) {
				pagDest ="datosmiembros.jsp";
				HttpSession session = request.getSession();
				session.setAttribute("nombre_miem",user.getNombre_miem());
				session.setAttribute("rol", user.getRol());
			}else {
				String msgerr =  "Usuario y/o contraseña incorrectos";
				request.setAttribute("msgerr", msgerr);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
		dispatcher.forward(request, response);
		
	}

}