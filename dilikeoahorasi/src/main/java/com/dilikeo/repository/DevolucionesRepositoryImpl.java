package com.dilikeo.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.dilikeo.domain.Devoluciones;

/**
 * = DevolucionesRepositoryImpl
 *
 * Implementation of DevolucionesRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = DevolucionesRepositoryCustom.class)
public class DevolucionesRepositoryImpl extends QueryDslRepositorySupportExt<Devoluciones> implements DevolucionesRepositoryCustom{

    /**
     * Default constructor
     */
    DevolucionesRepositoryImpl() {
        super(Devoluciones.class);
    }
}