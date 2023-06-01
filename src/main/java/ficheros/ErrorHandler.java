package ficheros;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Date;

/**
 * Servlet implementation class ErrorHandler
 */
public class ErrorHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ErrorHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String resultadoCalculoEnServlet= "El resultado es: XXX  en este momento (" + (new Date()).toString() +" )"; 
		
		response.setContentType("text/html");
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try (PrintWriter writer = response.getWriter()) {
			writer.write("<html><head><title>Error description</title></head><body>");
			writer.write("<h2>Error description</h2>");
			writer.write("<ul>");			writer.write("</ul>");
			writer.write("<p>Served at: " + request.getContextPath() + "</p>");
			writer.write("<p>"+ resultadoCalculoEnServlet +"</p>");
			writer.write("</html></body>");		}
		
		// TODO poner en el request un atributo, tal que msg_error_servlet con el valor calculado en resultadoCalculoEnServlet  
		//TODO   reenviar a jsp ( requestDispacher)
		
		//TODO en el jsp al que se reenvia, maquetar algo de html y entre los textos a mostrar, 
		// mostrar el valor pasado en el atributo del request calculado en el servlet siguiendo el nombre del ejemplo anterior seria msg_error_servlet
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
