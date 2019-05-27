package com.dilikeo.service.api;
import com.dilikeo.domain.Cambios;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = CambiosService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Cambios.class)
public interface CambiosService extends EntityResolver<Cambios, Long>, ValidatorService<Cambios> {
}
