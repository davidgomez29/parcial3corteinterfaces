package com.dilikeo.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.dilikeo.domain.Cambios;

/**
 * = CambiosRepositoryImpl
 *
 * Implementation of CambiosRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = CambiosRepositoryCustom.class)
public class CambiosRepositoryImpl extends QueryDslRepositorySupportExt<Cambios> implements CambiosRepositoryCustom{

    /**
     * Default constructor
     */
    CambiosRepositoryImpl() {
        super(Cambios.class);
    }
}