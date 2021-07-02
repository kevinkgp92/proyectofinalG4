package com.eoi.controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eoi.servicios.BuscadorDAO;

@WebServlet("/ServletBuscador")
public class ServletBuscador extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BuscadorDAO search = new BuscadorDAO();
		String comautonoma = request.getParameter("comautonoma");
		String provincia = request.getParameter("provincia");
		String tipoTurismo = request.getParameter("tipoTurismo");
		String comuniautonoma = "";
		List<String> listaViajes = new ArrayList<String>();
		
		switch(comautonoma) {
		case "1": comuniautonoma = "Cualquier Comunidad Autónoma";
		break;
		case "2": comuniautonoma = "Andalucia";
		break;
		case "3": comuniautonoma = "Aragón";
		break; 
		case "18": comuniautonoma = "Islas Canarias";
		break;
		}
		listaViajes = search.busqueda(provincia, comuniautonoma, tipoTurismo);
		
		for(String viaje: listaViajes) {
			System.out.println(viaje);
		}
	}

}
