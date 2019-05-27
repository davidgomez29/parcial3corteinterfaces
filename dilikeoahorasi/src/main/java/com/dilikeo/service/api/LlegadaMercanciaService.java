package com.dilikeo.service.api;
import com.dilikeo.domain.LlegadaMercancia;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = LlegadaMercanciaService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = LlegadaMercancia.class)
public interface LlegadaMercanciaService extends EntityResolver<LlegadaMercancia, Long>, ValidatorService<LlegadaMercancia> {
}
