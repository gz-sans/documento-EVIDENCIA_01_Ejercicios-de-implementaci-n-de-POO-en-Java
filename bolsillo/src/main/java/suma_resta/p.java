package suma_resta;

import javax.servlet.http.HttpServletRequest;

public abstract class p {
    protected int saldoActual;

    public p() {
        saldoActual = 0;
    }

    public p(int saldoActual) {
        this.saldoActual = saldoActual;
    }

    public abstract double calcularArea();
    
    public void realizarOperacion(HttpServletRequest req, String accion, int cantidad) {
        switch (accion) {
            case "suma":
                saldoActual += cantidad;
                break;

            case "resta":
                saldoActual -= cantidad;
                break;
        }
        
        req.setAttribute("saldo", saldoActual);
    }
}
