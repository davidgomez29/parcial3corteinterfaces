package com.dilikeo.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QDatosVendedor is a Querydsl query type for DatosVendedor
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QDatosVendedor extends EntityPathBase<DatosVendedor> {

    private static final long serialVersionUID = -1588977664L;

    public static final QDatosVendedor datosVendedor = new QDatosVendedor("datosVendedor");

    public final StringPath cedula = createString("cedula");

    public final StringPath correo = createString("correo");

    public final StringPath direccion = createString("direccion");

    public final StringPath EPS = createString("EPS");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Long> telefono = createNumber("telefono", Long.class);

    public final EnumPath<Vendedor> vendedorexistente = createEnum("vendedorexistente", Vendedor.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QDatosVendedor(String variable) {
        super(DatosVendedor.class, forVariable(variable));
    }

    public QDatosVendedor(Path<? extends DatosVendedor> path) {
        super(path.getType(), path.getMetadata());
    }

    public QDatosVendedor(PathMetadata metadata) {
        super(DatosVendedor.class, metadata);
    }

}

