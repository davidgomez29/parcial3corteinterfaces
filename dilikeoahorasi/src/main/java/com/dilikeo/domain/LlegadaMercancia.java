package com.dilikeo.domain;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import javax.persistence.Enumerated;
import javax.validation.constraints.NotNull;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Past;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * = LlegadaMercancia
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
public class LlegadaMercancia {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Version
    private Integer version;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Enumerated
    private Producto productos;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    private String cantidad;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Past
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fechallegada;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Enumerated
    private Proveedor proveedor;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Enumerated
    private Vendedor ReceptorProductos;
}
