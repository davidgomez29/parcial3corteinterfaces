package com.dilikeo.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QDevoluciones is a Querydsl query type for Devoluciones
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QDevoluciones extends EntityPathBase<Devoluciones> {

    private static final long serialVersionUID = 830493176L;

    public static final QDevoluciones devoluciones = new QDevoluciones("devoluciones");

    public final NumberPath<Integer> cantidad = createNumber("cantidad", Integer.class);

    public final StringPath Comentario = createString("Comentario");

    public final StringPath dinerodevuelto = createString("dinerodevuelto");

    public final DateTimePath<java.util.Date> fechadevolucion = createDateTime("fechadevolucion", java.util.Date.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Integer> id_cliente = createNumber("id_cliente", Integer.class);

    public final EnumPath<Producto> producto = createEnum("producto", Producto.class);

    public final EnumPath<Vendedor> quien_hace_devolucion = createEnum("quien_hace_devolucion", Vendedor.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QDevoluciones(String variable) {
        super(Devoluciones.class, forVariable(variable));
    }

    public QDevoluciones(Path<? extends Devoluciones> path) {
        super(path.getType(), path.getMetadata());
    }

    public QDevoluciones(PathMetadata metadata) {
        super(Devoluciones.class, metadata);
    }

}

