package com.dilikeo.service.api;
import com.dilikeo.domain.DatosDomiciliario;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = DatosDomiciliarioService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = DatosDomiciliario.class)
public interface DatosDomiciliarioService extends EntityResolver<DatosDomiciliario, Long>, ValidatorService<DatosDomiciliario> {
}
