import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Consultar3 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion=req.getParameter("accion");
        System.out.println(accion);

        switch(accion){

            case "consultart":
            req.getRequestDispatcher("davi4.jsp").forward(req, resp);
            break;

            case "recargar":
            req.getRequestDispatcher("davi2.jsp").forward(req, resp);
            break;
        }
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Obtener la acción de la operación
        String accion = req.getParameter("accion");
    
        // Obtener el saldo actual de la cuenta desde la sesión del usuario
        HttpSession session = req.getSession();
        Integer saldoActual = (Integer) session.getAttribute("saldo");
    
        // Si no hay saldo actual, se establece a 0
        if (saldoActual == null) {
            saldoActual = 0;
        }
    
        // Obtener la cantidad a sumar o restar del parámetro "cantidad"
        String cantidadStr = req.getParameter("cantidad");
        int cantidad = Integer.parseInt(cantidadStr);
    
        // Realizar la operación correspondiente según la acción
        if (accion.equals("suma")) {
            saldoActual += cantidad;
        } else if (accion.equals("resta")) {
            saldoActual -= cantidad;
        }
    
        // Guardar el saldo actualizado en la sesión del usuario
        session.setAttribute("saldo", saldoActual);
    
        // Enviar el saldo actualizado como atributo en el objeto request
        req.setAttribute("saldo", saldoActual);
    
        // Redirigir al JSP para mostrar el saldo actualizado
        req.getRequestDispatcher("davi4.jsp").forward(req, resp);
    }
}    