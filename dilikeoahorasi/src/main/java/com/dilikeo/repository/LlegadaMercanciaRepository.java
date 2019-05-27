package com.dilikeo.repository;
import com.dilikeo.domain.LlegadaMercancia;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = LlegadaMercanciaRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = LlegadaMercancia.class)
public interface LlegadaMercanciaRepository extends DetachableJpaRepository<LlegadaMercancia, Long>, LlegadaMercanciaRepositoryCustom {
}
