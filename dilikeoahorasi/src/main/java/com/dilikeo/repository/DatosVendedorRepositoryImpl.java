package com.dilikeo.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.dilikeo.domain.DatosVendedor;

/**
 * = DatosVendedorRepositoryImpl
 *
 * Implementation of DatosVendedorRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = DatosVendedorRepositoryCustom.class)
public class DatosVendedorRepositoryImpl extends QueryDslRepositorySupportExt<DatosVendedor> implements DatosVendedorRepositoryCustom{

    /**
     * Default constructor
     */
    DatosVendedorRepositoryImpl() {
        super(DatosVendedor.class);
    }
}