package com.dilikeo.service.api;
import com.dilikeo.domain.DatosVendedor;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = DatosVendedorService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = DatosVendedor.class)
public interface DatosVendedorService extends EntityResolver<DatosVendedor, Long>, ValidatorService<DatosVendedor> {
}
