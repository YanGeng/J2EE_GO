package lee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class getApplication
 */
// @WebServlet(name="get-application", urlPatterns={"/get-Application"})
@WebServlet("/get-application")
public class getApplication extends HttpServlet {   
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void service(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		 response.setContentType("text/html;charset=utf-8");
		 PrintWriter out = response.getWriter();
		 out.println("<html><head><title>");
		 out.println("测试application");
		 out.println("</title></head><body>");
		 ServletContext sc = getServletConfig().getServletContext();
		 out.print("application中的 counter 值为:");
		 out.println(sc.getAttribute("counter"));
		 out.println("</body></html>");
	}
}
