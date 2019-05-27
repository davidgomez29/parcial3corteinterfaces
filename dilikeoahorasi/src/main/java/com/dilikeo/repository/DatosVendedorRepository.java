package com.dilikeo.repository;
import com.dilikeo.domain.DatosVendedor;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = DatosVendedorRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = DatosVendedor.class)
public interface DatosVendedorRepository extends DetachableJpaRepository<DatosVendedor, Long>, DatosVendedorRepositoryCustom {
}
