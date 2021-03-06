// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.domain;

import com.dilikeo.domain.Devoluciones;
import com.dilikeo.domain.Producto;
import com.dilikeo.domain.Vendedor;
import java.util.Date;
import java.util.Objects;

privileged aspect Devoluciones_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long Devoluciones.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return Devoluciones
     */
    public Devoluciones Devoluciones.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer Devoluciones.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return Devoluciones
     */
    public Devoluciones Devoluciones.setVersion(Integer version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets id_cliente value
     * 
     * @return Integer
     */
    public int Devoluciones.getId_cliente() {
        return this.id_cliente;
    }
    
    /**
     * Sets id_cliente value
     * 
     * @param id_cliente
     * @return Devoluciones
     */
    public Devoluciones Devoluciones.setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
        return this;
    }
    
    /**
     * Gets producto value
     * 
     * @return Producto
     */
    public Producto Devoluciones.getProducto() {
        return this.producto;
    }
    
    /**
     * Sets producto value
     * 
     * @param producto
     * @return Devoluciones
     */
    public Devoluciones Devoluciones.setProducto(Producto producto) {
        this.producto = producto;
        return this;
    }
    
    /**
     * Gets cantidad value
     * 
     * @return Integer
     */
    public int Devoluciones.getCantidad() {
        return this.cantidad;
    }
    
    /**
     * Sets cantidad value
     * 
     * @param cantidad
     * @return Devoluciones
     */
    public Devoluciones Devoluciones.setCantidad(int cantidad) {
        this.cantidad = cantidad;
        return this;
    }
    
    /**
     * Gets Comentario value
     * 
     * @return String
     */
    public String Devoluciones.getComentario() {
        return this.Comentario;
    }
    
    /**
     * Sets Comentario value
     * 
     * @param Comentario
     * @return Devoluciones
     */
    public Devoluciones Devoluciones.setComentario(String Comentario) {
        this.Comentario = Comentario;
        return this;
    }
    
    /**
     * Gets dinerodevuelto value
     * 
     * @return String
     */
    public String Devoluciones.getDinerodevuelto() {
        return this.dinerodevuelto;
    }
    
    /**
     * Sets dinerodevuelto value
     * 
     * @param dinerodevuelto
     * @return Devoluciones
     */
    public Devoluciones Devoluciones.setDinerodevuelto(String dinerodevuelto) {
        this.dinerodevuelto = dinerodevuelto;
        return this;
    }
    
    /**
     * Gets fechadevolucion value
     * 
     * @return Date
     */
    public Date Devoluciones.getFechadevolucion() {
        return this.fechadevolucion;
    }
    
    /**
     * Sets fechadevolucion value
     * 
     * @param fechadevolucion
     * @return Devoluciones
     */
    public Devoluciones Devoluciones.setFechadevolucion(Date fechadevolucion) {
        this.fechadevolucion = fechadevolucion;
        return this;
    }
    
    /**
     * Gets quien_hace_devolucion value
     * 
     * @return Vendedor
     */
    public Vendedor Devoluciones.getQuien_hace_devolucion() {
        return this.quien_hace_devolucion;
    }
    
    /**
     * Sets quien_hace_devolucion value
     * 
     * @param quien_hace_devolucion
     * @return Devoluciones
     */
    public Devoluciones Devoluciones.setQuien_hace_devolucion(Vendedor quien_hace_devolucion) {
        this.quien_hace_devolucion = quien_hace_devolucion;
        return this;
    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean Devoluciones.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof Devoluciones)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((Devoluciones) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int Devoluciones.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Devoluciones.toString() {
        return "Devoluciones {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", id_cliente='" + id_cliente + '\'' + 
                ", cantidad='" + cantidad + '\'' + 
                ", Comentario='" + Comentario + '\'' + 
                ", dinerodevuelto='" + dinerodevuelto + '\'' + 
                ", fechadevolucion='" + fechadevolucion == null ? null : java.text.DateFormat.getDateTimeInstance().format(fechadevolucion) + '\'' + "}" + super.toString();
    }
    
}
