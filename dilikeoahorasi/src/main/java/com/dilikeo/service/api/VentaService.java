package com.dilikeo.service.api;
import com.dilikeo.domain.Venta;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = VentaService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Venta.class)
public interface VentaService extends EntityResolver<Venta, Long>, ValidatorService<Venta> {
}
