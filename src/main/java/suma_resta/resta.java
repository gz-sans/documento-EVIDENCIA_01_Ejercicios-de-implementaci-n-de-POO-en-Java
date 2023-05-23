package suma_resta;

import javax.servlet.http.HttpServletRequest;

public class resta extends p {
    public resta() {
        super();
    }

    public resta(int saldoActual) {
        super(saldoActual);
    }

    public resta(HttpServletRequest req) {
        super();
        String cantidadStr = req.getParameter("cantidad");
        int cantidad = Integer.parseInt(cantidadStr);
        realizarOperacion(req, "resta", cantidad);
    }

    @Override
    public double calcularArea() {
        // Implementa el cálculo del área según tus necesidades
        return 0.0;
    }
}
