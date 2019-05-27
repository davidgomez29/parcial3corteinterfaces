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
import javax.validation.constraints.Pattern;

/**
 * = DatosVendedor
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
public class DatosVendedor {

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
    private Vendedor vendedorexistente;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @NumberFormat
    private long telefono;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Pattern(regexp = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$")
    private String correo;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    private String cedula;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    private String direccion;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String EPS;
}
