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
import org.springframework.format.annotation.NumberFormat;

/**
 * = Venta
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
public class Venta {

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
    private Producto producto;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @NumberFormat
    private int id_cliente;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @NumberFormat
    private int cantidad;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Enumerated
    private Garantia garantia;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Enumerated
    private Vendedor vendedor;
}
