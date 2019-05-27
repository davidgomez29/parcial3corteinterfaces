package com.dilikeo.repository;
import com.dilikeo.domain.Cambios;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = CambiosRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Cambios.class)
public interface CambiosRepository extends DetachableJpaRepository<Cambios, Long>, CambiosRepositoryCustom {
}
