package ficheros;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/ListFiles")
public class ListFiles extends HttpServlet {

	private void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final String ROOT_FILE_PATH="C:\\jrep\\tmp\\listaFicheirosProbarApp";
		File f=new File(ROOT_FILE_PATH);
		
		RequestDispatcher rd=request.getRequestDispatcher("listFiles.jsp");
		
		File[] allSubFiles=f.listFiles();
		request.setAttribute("Files", allSubFiles);
		
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProc(req, resp);
	}
}