package org.iesvdm.jsp_servlet_jdbc.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.iesvdm.jsp_servlet_jdbc.dao.SocioDAO;
import org.iesvdm.jsp_servlet_jdbc.model.Socio;

import java.io.IOException;
import java.util.List;

@WebServlet (name = "BorrarSocioServlet", value="/BorrarSocioServlet")
public class BorrarSocioServlet extends HttpServlet {


    private org.iesvdm.jsp_servlet_jdbc.dao.SocioDAO SocioDAO;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = null;

        String codigoString = request.getParameter("codigo");
        Integer codigo = null;

        try {
            codigo = Integer.parseInt(codigoString);
        }catch (NumberFormatException e) {
            e.printStackTrace();
        }

        if(codigo != null) {
            //Parametro valido
            //org.iesvdm.jsp_servlet_jdbc.dao.SocioDAO.delete(codigo);

            //SI QUISIERA REDIRECCION DEL LADO DEL NAVEGADOR
            //response.sendRedirect("ListarSocioServlet");

            //PERO QUIERO REFIERECCION INTERNA

            List<Socio> listado = this.SocioDAO.getAll();
            request.setAttribute("listado", listado);
            dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/listadoSocio.jsp");
            dispatcher.forward(request, response);
        }else{

        }

        //parametro no valido

    }

}
