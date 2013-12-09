/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;
import javax.swing.JOptionPane;
/**
 *
 * @author Pochii
 */
public class nuevoPrestamo {
    /**
     * Propiedades de la clase
     * plazo,           numero de meses de plazo
     * cuota,           cuota mensual del prestamo
     * capital,         valor del prestamo que se abonara a capital 
     * iva,             valor de intereses mas iva
     * cantidad,        valor del monto solicitado
     * intereses_pago,  valor de la cuota dedicada a intereses
     * interes   ,      tasa de interes a aplicar
     */

    private double interes;
    private double intereses_pago;
    private double cantidad;
    private double cuotas;
    private double capital;
    private int    plazo;
    private double iva;
    private double interes_mora;

    /**
     * @return the interes
     */
    public double getInteres() {
        return interes/100;
    }

    /**
     * @param interes the interes to set
     */
    public void setInteres(double interes) {
        this.interes = interes;
    }

    /**
     * @return the intereses_pago
     */
    public double getIntereses_pago() {
        this.intereses_pago = this.getCantidad() * this.getInteres();
        return Math.rint(intereses_pago*100)/100;
    }

    /**
     * @return the cantidad
     */
    public double getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(double cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the cuotas
     */
    public double getCuotas() {
        double cuota_no_iva = this.getIntereses_pago() / (1- Math.pow((1+this.getInteres()), -1*this.getPlazo())); //Almacenando cuota sin tomar el iva
        this.cuotas = Math.rint((cuota_no_iva + this.getIva())*100)/100;
        return cuotas;
    }
    
    /**
     * @return the capital
     */
    public double getCapital() {
        this.capital = this.getCuotas() - (this.getIntereses_pago() + this.getIva()); 
        return capital;
    }

    /**
     * @return the plazo
     */
    public int getPlazo() {
        return plazo;
    }

    /**
     * @param plazo the plazo to set
     */
    public void setPlazo(int plazo) {
        this.plazo = plazo;
    }

    /**
     * @return the iva
     */
    public double getIva() {
        this.iva = this.getIntereses_pago() * 0.13;
        return Math.rint(iva*100)/100;
    }    

    /**
     * @return the interes_mora
     */
    public double getInteres_mora() {
        //El 1 al final, simboliza el atrazo de un dia
        this.interes_mora = ((this.getCuotas()*this.getInteres())/30)*1;
        return Math.rint(interes_mora*100)/100;
    }

}
