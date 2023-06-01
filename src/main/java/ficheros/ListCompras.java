package ficheros;


import java.io.IOException;
import java.util.List;


import org.feliz.almacen.api.MotorApiServicioNegocio;
import org.feliz.almacen.api.dao.MariaDBFactoryDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ListCompras") 
public class ListCompras extends HttpServlet{	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProc(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProc(req, resp);
	}

	private void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Logger logger = LoggerFactory.getLogger(MariaDBFactoryDAO.class);
		
		MotorApiServicioNegocio mApi = new MotorApiServicioNegocio();
		List<String> allCompras=null;
		
		try {
			allCompras = mApi.getListaClientes();
		} catch (Exception e) {
			
			logger.error("No se pudo obtener el listado de compras");
		}
		
		request.setAttribute("lCompras", allCompras);
		
		RequestDispatcher rd = request.getRequestDispatcher("listCompras.jsp");
		
		String pFormato = request.getParameter("formato");
		if (null != pFormato && pFormato.equals("w3c")) {
			rd = request.getRequestDispatcher("listComprasFormato.jsp");
		}
		
		rd.forward(request, response);
	}
}