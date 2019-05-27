package com.dilikeo.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QVenta is a Querydsl query type for Venta
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QVenta extends EntityPathBase<Venta> {

    private static final long serialVersionUID = -175348086L;

    public static final QVenta venta = new QVenta("venta");

    public final NumberPath<Integer> cantidad = createNumber("cantidad", Integer.class);

    public final EnumPath<Garantia> garantia = createEnum("garantia", Garantia.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Integer> id_cliente = createNumber("id_cliente", Integer.class);

    public final EnumPath<Producto> producto = createEnum("producto", Producto.class);

    public final EnumPath<Vendedor> vendedor = createEnum("vendedor", Vendedor.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QVenta(String variable) {
        super(Venta.class, forVariable(variable));
    }

    public QVenta(Path<? extends Venta> path) {
        super(path.getType(), path.getMetadata());
    }

    public QVenta(PathMetadata metadata) {
        super(Venta.class, metadata);
    }

}

