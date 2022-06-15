import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
publicclassservletextends HttpServlet
{
publicvoid service(HttpServletRequest request, HttpServletResponse 
response)throws ServletException,IOException
{
response.setContentType("text/html");
PrintWriter out = response.getWriter();
try
{
out.println("<html>");
out.println("<head>"); 
out.println("<title>Servlet NewServlet</title>"); 
out.println("</head>");
out.println("<body>");
String s1 = request.getParameter("t1");
String s2 = request.getParameter("t2");
String s3 = request.getParameter("t3");
String s4 = request.getParameter("t4");
out.println("First Name:" + s1);
out.println("Last Name:" + s2);
out.println("Age:" + s3);
out.println("E-mail:" + s4);
out.println("</body>");
out.println("</html>");
}
catch(Exception e) {}
}
}
