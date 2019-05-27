package com.dilikeo.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QDatosDomiciliario is a Querydsl query type for DatosDomiciliario
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QDatosDomiciliario extends EntityPathBase<DatosDomiciliario> {

    private static final long serialVersionUID = 436565754L;

    public static final QDatosDomiciliario datosDomiciliario = new QDatosDomiciliario("datosDomiciliario");

    public final StringPath cedula = createString("cedula");

    public final StringPath direccion = createString("direccion");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath nombre = createString("nombre");

    public final EnumPath<Domiciliario> nombreenbase = createEnum("nombreenbase", Domiciliario.class);

    public final StringPath telefono = createString("telefono");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QDatosDomiciliario(String variable) {
        super(DatosDomiciliario.class, forVariable(variable));
    }

    public QDatosDomiciliario(Path<? extends DatosDomiciliario> path) {
        super(path.getType(), path.getMetadata());
    }

    public QDatosDomiciliario(PathMetadata metadata) {
        super(DatosDomiciliario.class, metadata);
    }

}

