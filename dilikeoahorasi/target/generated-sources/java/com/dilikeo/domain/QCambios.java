package com.dilikeo.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QCambios is a Querydsl query type for Cambios
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QCambios extends EntityPathBase<Cambios> {

    private static final long serialVersionUID = -804451976L;

    public static final QCambios cambios = new QCambios("cambios");

    public final StringPath aidcliente = createString("aidcliente");

    public final DateTimePath<java.util.Date> fechacambio = createDateTime("fechacambio", java.util.Date.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final EnumPath<Producto> producto = createEnum("producto", Producto.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QCambios(String variable) {
        super(Cambios.class, forVariable(variable));
    }

    public QCambios(Path<? extends Cambios> path) {
        super(path.getType(), path.getMetadata());
    }

    public QCambios(PathMetadata metadata) {
        super(Cambios.class, metadata);
    }

}

