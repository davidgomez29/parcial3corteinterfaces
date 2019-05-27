package com.dilikeo.service.api;
import com.dilikeo.domain.Devoluciones;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = DevolucionesService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Devoluciones.class)
public interface DevolucionesService extends EntityResolver<Devoluciones, Long>, ValidatorService<Devoluciones> {
}
