package com.eoi.controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eoi.modelo.Viajes;
import com.eoi.servicios.BuscadorDAO;

@WebServlet("/ServletBuscador")
public class ServletBuscador extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BuscadorDAO search = new BuscadorDAO();
		String comautonoma = request.getParameter("comautonoma");
		String provincia = request.getParameter("provincia");
		String tipoTurismo = request.getParameter("tipoTurismo");
		String comuniautonoma = "";
		String destPage = "PaquetesDeViajes.jsp";
		
		List<Viajes> listaViajes = new ArrayList<Viajes>();
		
		switch(comautonoma) {
		case "1": comuniautonoma = "Cualquier Comunidad Autónoma";
		break;
		case "2": comuniautonoma = "Andalucia";
		break;
		case "3": comuniautonoma = "Aragón";
		break; 
		case "4": comuniautonoma = "Asturias";
		break; 
		case "5": comuniautonoma = "Cantabria";
		break; 
		case "6": comuniautonoma = "Castilla-La Mancha";
		break; 
		case "7": comuniautonoma = "Castilla y León";
		break; 
		case "8": comuniautonoma = "Cataluña";
		break; 
		case "9": comuniautonoma = "Comunidad Valenciana";
		break; 
		case "10": comuniautonoma = "Extremadura";
		break; 
		case "11": comuniautonoma = "Galicia";
		break;
		case "12": comuniautonoma = "La Rioja";
		break;
		case "13": comuniautonoma = "Madrid";
		break;
		case "14": comuniautonoma = "Murcia";
		break;
		case "15": comuniautonoma = "Navarra";
		break;
		case "16": comuniautonoma = "País Vasco";
		break;
		case "17": comuniautonoma = "Islas Baleares";
		break;
		case "18": comuniautonoma = "Islas Canarias";
		break;
		case "19": comuniautonoma = "Ceuta";
		break;
		case "20": comuniautonoma = "Melilla";
		break;
		}
		listaViajes = search.busqueda(provincia, comuniautonoma, tipoTurismo);
		request.setAttribute("listaViajes", listaViajes);
		RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
		dispatcher.forward(request, response);
	}
}
