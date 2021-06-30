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


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String usuario = request.getParameter("usuario");
		String pass = request.getParameter("pass");
		
		UsuarioDAO udao = new UsuarioDAO();
		Usuario usu = null;
		String pagDest = "index.jsp";
		
		try {
			usu = udao.login(usuario, pass);
			
			//Usuario existe en la base de datos
			if(usu != null) {
				pagDest ="datosdepartamento.jsp";
				HttpSession session = request.getSession();
				session.setAttribute("usuario",usu.getusuario());
				session.setAttribute("rol", usu.getRol());
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