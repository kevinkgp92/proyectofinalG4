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
		String contraseņa = request.getParameter("contraseņa");
		
		
		UsuarioDAO udao = new UsuarioDAO();
		Usuario user = null;
		String pagDest = "datosmiembros.jsp";
		
		try {
			user = udao.login(email, contraseņa);
			request.setAttribute("usu", user);
			
			//Usuario existe en la base de datos
			if(user != null) {
				pagDest ="datosmiembros.jsp";
				HttpSession session = request.getSession();
				session.setAttribute("nombre_miem",user.getNombre_miem());
				session.setAttribute("rol", user.getRol());
			}else {
				String msgerr =  "Usuario y/o contraseņa incorrectos";
				request.setAttribute("msgerr", msgerr);
				pagDest = "errorlogin.jsp";
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
		dispatcher.forward(request, response);
		
	}

}