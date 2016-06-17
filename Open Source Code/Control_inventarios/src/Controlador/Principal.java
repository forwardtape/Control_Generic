package Controlador;



import Modelo.Logica;
import Vista.Ventana;

public class Principal {

	public static void main(String[] args) {
		// Se declara  las Clase con mis metodos
            Logica miLogica;
            Ventana ventana;
            // se crea el Objeto
            
            miLogica = new Logica();
            ventana = new Ventana();
		
            // Mando a llamar los metodos
            miLogica.manejaVista();
            //miLogica.conectar();
            miLogica.mostrarTabla();
            miLogica.mostrarTabla2();
           // ventana.cargaProveedores();
		
		
		

	}

}
