// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.domain;

import com.dilikeo.domain.DatosVendedor;
import com.dilikeo.domain.Vendedor;
import java.util.Objects;

privileged aspect DatosVendedor_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long DatosVendedor.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return DatosVendedor
     */
    public DatosVendedor DatosVendedor.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer DatosVendedor.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return DatosVendedor
     */
    public DatosVendedor DatosVendedor.setVersion(Integer version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets vendedorexistente value
     * 
     * @return Vendedor
     */
    public Vendedor DatosVendedor.getVendedorexistente() {
        return this.vendedorexistente;
    }
    
    /**
     * Sets vendedorexistente value
     * 
     * @param vendedorexistente
     * @return DatosVendedor
     */
    public DatosVendedor DatosVendedor.setVendedorexistente(Vendedor vendedorexistente) {
        this.vendedorexistente = vendedorexistente;
        return this;
    }
    
    /**
     * Gets telefono value
     * 
     * @return Long
     */
    public long DatosVendedor.getTelefono() {
        return this.telefono;
    }
    
    /**
     * Sets telefono value
     * 
     * @param telefono
     * @return DatosVendedor
     */
    public DatosVendedor DatosVendedor.setTelefono(long telefono) {
        this.telefono = telefono;
        return this;
    }
    
    /**
     * Gets correo value
     * 
     * @return String
     */
    public String DatosVendedor.getCorreo() {
        return this.correo;
    }
    
    /**
     * Sets correo value
     * 
     * @param correo
     * @return DatosVendedor
     */
    public DatosVendedor DatosVendedor.setCorreo(String correo) {
        this.correo = correo;
        return this;
    }
    
    /**
     * Gets cedula value
     * 
     * @return String
     */
    public String DatosVendedor.getCedula() {
        return this.cedula;
    }
    
    /**
     * Sets cedula value
     * 
     * @param cedula
     * @return DatosVendedor
     */
    public DatosVendedor DatosVendedor.setCedula(String cedula) {
        this.cedula = cedula;
        return this;
    }
    
    /**
     * Gets direccion value
     * 
     * @return String
     */
    public String DatosVendedor.getDireccion() {
        return this.direccion;
    }
    
    /**
     * Sets direccion value
     * 
     * @param direccion
     * @return DatosVendedor
     */
    public DatosVendedor DatosVendedor.setDireccion(String direccion) {
        this.direccion = direccion;
        return this;
    }
    
    /**
     * Gets EPS value
     * 
     * @return String
     */
    public String DatosVendedor.getEPS() {
        return this.EPS;
    }
    
    /**
     * Sets EPS value
     * 
     * @param EPS
     * @return DatosVendedor
     */
    public DatosVendedor DatosVendedor.setEPS(String EPS) {
        this.EPS = EPS;
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
    public boolean DatosVendedor.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof DatosVendedor)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((DatosVendedor) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int DatosVendedor.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String DatosVendedor.toString() {
        return "DatosVendedor {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", telefono='" + telefono + '\'' + 
                ", correo='" + correo + '\'' + 
                ", cedula='" + cedula + '\'' + 
                ", direccion='" + direccion + '\'' + 
                ", EPS='" + EPS + '\'' + "}" + super.toString();
    }
    
}
