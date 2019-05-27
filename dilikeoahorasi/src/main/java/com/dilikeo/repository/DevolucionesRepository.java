package com.dilikeo.repository;
import com.dilikeo.domain.Devoluciones;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = DevolucionesRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Devoluciones.class)
public interface DevolucionesRepository extends DetachableJpaRepository<Devoluciones, Long>, DevolucionesRepositoryCustom {
}
