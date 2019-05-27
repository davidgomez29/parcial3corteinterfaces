package com.dilikeo.web;
import com.dilikeo.domain.Venta;
import com.dilikeo.service.api.VentaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = VentaDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Venta.class)
public class VentaDeserializer extends JsonObjectDeserializer<Venta> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private VentaService ventaService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param ventaService
     * @param conversionService
     */
    @Autowired
    public VentaDeserializer(@Lazy VentaService ventaService, ConversionService conversionService) {
        this.ventaService = ventaService;
        this.conversionService = conversionService;
    }
}
