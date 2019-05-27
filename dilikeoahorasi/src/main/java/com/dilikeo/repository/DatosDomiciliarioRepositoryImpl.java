package com.dilikeo.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.dilikeo.domain.DatosDomiciliario;

/**
 * = DatosDomiciliarioRepositoryImpl
 *
 * Implementation of DatosDomiciliarioRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = DatosDomiciliarioRepositoryCustom.class)
public class DatosDomiciliarioRepositoryImpl extends QueryDslRepositorySupportExt<DatosDomiciliario> implements DatosDomiciliarioRepositoryCustom{

    /**
     * Default constructor
     */
    DatosDomiciliarioRepositoryImpl() {
        super(DatosDomiciliario.class);
    }
}