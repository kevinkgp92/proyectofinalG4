package com.eoi.modelo;

public class Viajes {

	String viaje_fotos;
	String viaje_boton;
	String viaje_descrip;
	String viaje_titulo;
	
	public Viajes() {
		
	}

	public Viajes(String viaje_fotos, String viaje_boton, String viaje_descrip, String viaje_titulo) {
		this.viaje_fotos = viaje_fotos;
		this.viaje_boton = viaje_boton;
		this.viaje_descrip = viaje_descrip;
		this.viaje_titulo = viaje_titulo;
	}

	public String getViaje_fotos() {
		return viaje_fotos;
	}

	public void setViaje_fotos(String viaje_fotos) {
		this.viaje_fotos = viaje_fotos;
	}

	public String getViaje_boton() {
		return viaje_boton;
	}

	public void setViaje_boton(String viaje_boton) {
		this.viaje_boton = viaje_boton;
	}

	public String getViaje_descrip() {
		return viaje_descrip;
	}

	public void setViaje_descrip(String viaje_descrip) {
		this.viaje_descrip = viaje_descrip;
	}

	public String getViaje_titulo() {
		return viaje_titulo;
	}

	public void setViaje_titulo(String viaje_titulo) {
		this.viaje_titulo = viaje_titulo;
	}

	@Override
	public String toString() {
		return "Viajes [viaje_fotos=" + viaje_fotos + ", viaje_boton=" + viaje_boton + ", viaje_descrip="
				+ viaje_descrip + ", viaje_titulo=" + viaje_titulo + "]";
	}
	
}
