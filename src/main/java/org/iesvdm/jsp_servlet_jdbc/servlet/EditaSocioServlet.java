package org.iesvdm.jsp_servlet_jdbc.servlet;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.iesvdm.jsp_servlet_jdbc.dao.SocioDAO;

@WebServlet(name = "BorrarSocioServlet", value="/EditaSocioServlet")
public class EditaSocioServlet extends HttpServlet {

    private SocioDAO socioDAO;


    protected void post(HttpServletRequest request, HttpServletResponse response){

        RequestDispatcher dispatcher = null;
        String codigoString = request.getParameter("codigo");
        Integer codigo = null;

    }


}
