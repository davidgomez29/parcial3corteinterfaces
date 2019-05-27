package com.dilikeo.repository;
import com.dilikeo.domain.DatosDomiciliario;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = DatosDomiciliarioRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = DatosDomiciliario.class)
public interface DatosDomiciliarioRepository extends DetachableJpaRepository<DatosDomiciliario, Long>, DatosDomiciliarioRepositoryCustom {
}
