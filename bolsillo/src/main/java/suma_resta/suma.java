package suma_resta;

import javax.servlet.http.HttpServletRequest;

public class suma extends p {
    public suma() {
        super();
    }

    public suma(int saldoActual) {
        super(saldoActual);
    }

    public suma(HttpServletRequest req) {
        super();
        String cantidadStr = req.getParameter("cantidad");
        int cantidad = Integer.parseInt(cantidadStr);
        realizarOperacion(req, "suma", cantidad);
    }

    @Override
    public double calcularArea() {
        // Implementa el cálculo del área según tus necesidades
        return 0.0;
    }
}
