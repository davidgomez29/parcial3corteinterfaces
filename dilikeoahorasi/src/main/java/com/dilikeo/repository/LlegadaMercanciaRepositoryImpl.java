package com.dilikeo.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.dilikeo.domain.LlegadaMercancia;

/**
 * = LlegadaMercanciaRepositoryImpl
 *
 * Implementation of LlegadaMercanciaRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = LlegadaMercanciaRepositoryCustom.class)
public class LlegadaMercanciaRepositoryImpl extends QueryDslRepositorySupportExt<LlegadaMercancia> implements LlegadaMercanciaRepositoryCustom{

    /**
     * Default constructor
     */
    LlegadaMercanciaRepositoryImpl() {
        super(LlegadaMercancia.class);
    }
}