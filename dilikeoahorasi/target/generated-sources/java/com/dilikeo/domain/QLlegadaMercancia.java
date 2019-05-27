package com.dilikeo.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QLlegadaMercancia is a Querydsl query type for LlegadaMercancia
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QLlegadaMercancia extends EntityPathBase<LlegadaMercancia> {

    private static final long serialVersionUID = 1795893867L;

    public static final QLlegadaMercancia llegadaMercancia = new QLlegadaMercancia("llegadaMercancia");

    public final StringPath cantidad = createString("cantidad");

    public final DateTimePath<java.util.Date> fechallegada = createDateTime("fechallegada", java.util.Date.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final EnumPath<Producto> productos = createEnum("productos", Producto.class);

    public final EnumPath<Proveedor> proveedor = createEnum("proveedor", Proveedor.class);

    public final EnumPath<Vendedor> ReceptorProductos = createEnum("ReceptorProductos", Vendedor.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QLlegadaMercancia(String variable) {
        super(LlegadaMercancia.class, forVariable(variable));
    }

    public QLlegadaMercancia(Path<? extends LlegadaMercancia> path) {
        super(path.getType(), path.getMetadata());
    }

    public QLlegadaMercancia(PathMetadata metadata) {
        super(LlegadaMercancia.class, metadata);
    }

}

