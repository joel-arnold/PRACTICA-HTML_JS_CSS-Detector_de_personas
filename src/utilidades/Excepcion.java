package utilidades;

public class Excepcion extends Exception {

	private static final long serialVersionUID = 1L;

	public Excepcion(){
		super();
	}
	
	public Excepcion(String message){
		super(message);
	}
	
	public Excepcion(String message, Throwable cause){
		super(message,cause);		
	}
}