package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logica.*;
import entidades.*;

@WebServlet("/Identificador")
public class Identificador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Identificador() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession(true);
		
		String nombre = (String)request.getParameter("persona");
		
		Persona persona = new Persona();
		ControladorPersonas controlador = new ControladorPersonas();
		
		persona = controlador.buscarPersona(nombre);
		
		if(persona.getNombre() != "noExiste") {
			sesion.setAttribute("nombreCompleto", persona.getNombre());
			sesion.setAttribute("fechaNac", persona.getFechaNac());
			sesion.setAttribute("telefono", persona.getTelefono());
			sesion.setAttribute("colorFav", persona.getColorFav());
			sesion.setAttribute("habilidad1", persona.getHabilidad1());
			sesion.setAttribute("habilidad2", persona.getHabilidad2());
			sesion.setAttribute("habilidad3", persona.getHabilidad3());
			sesion.setAttribute("facebook", persona.getFacebook());
			sesion.setAttribute("instagram", persona.getInstagram());
			sesion.setAttribute("linkedin", persona.getLinkedIn());
			sesion.setAttribute("direccion", persona.getDireccion());
			sesion.setAttribute("correo", persona.getCorreo());
			String[] parts = persona.getNombre().split(" ");
			String nombreSolo = parts[0];
			sesion.setAttribute("nombre", nombreSolo);
			sesion.setAttribute("rutaImg", persona.getRutaImg());
			response.sendRedirect("perfil/perfil.jsp");
		}
		else {
			sesion.setAttribute("nombre", nombre);
			response.sendRedirect("noExiste.jsp");
		}
		
		
		doGet(request, response);
	}
}