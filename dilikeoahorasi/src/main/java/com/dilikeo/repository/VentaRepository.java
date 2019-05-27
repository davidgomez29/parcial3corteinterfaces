package com.dilikeo.repository;
import com.dilikeo.domain.Venta;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = VentaRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Venta.class)
public interface VentaRepository extends DetachableJpaRepository<Venta, Long>, VentaRepositoryCustom {
}
