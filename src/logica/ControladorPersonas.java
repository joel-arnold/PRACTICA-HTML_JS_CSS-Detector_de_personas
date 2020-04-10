package logica;

import datos.*;
import entidades.*;

public class ControladorPersonas {
	DatosPersona datos = new DatosPersona();
	
	public Persona buscarPersona(String nombre) {
		Persona persona = new Persona();
		
		persona = datos.buscaPersona(nombre);
		
		return persona;
	}
}
