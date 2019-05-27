package com.dilikeo.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.dilikeo.domain.Venta;

/**
 * = VentaRepositoryImpl
 *
 * Implementation of VentaRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = VentaRepositoryCustom.class)
public class VentaRepositoryImpl extends QueryDslRepositorySupportExt<Venta> implements VentaRepositoryCustom{

    /**
     * Default constructor
     */
    VentaRepositoryImpl() {
        super(Venta.class);
    }
}