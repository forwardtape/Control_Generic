package Controlador;

import Modelo.Logica;
import Vista.Login;
import Vista.Ventana;

public class Coordinador {

	private Login miLogin;
	private Logica miLogica;
	private Ventana miVentana;

	public void setVentanaPrincipal(Ventana miVentana) {
		//se crea un objeto tipo miCoordinador del objeto que llega
		this.miVentana=miVentana;
	}

	public void setLogica(Logica miLogica) {
		//se crea un objeto tipo miCoordinador del objeto que llega
		this.miLogica=miLogica;
		
	}

}
