package com.dilikeo.web;
import com.dilikeo.domain.Devoluciones;
import com.dilikeo.service.api.DevolucionesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = DevolucionesDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Devoluciones.class)
public class DevolucionesDeserializer extends JsonObjectDeserializer<Devoluciones> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private DevolucionesService devolucionesService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param devolucionesService
     * @param conversionService
     */
    @Autowired
    public DevolucionesDeserializer(@Lazy DevolucionesService devolucionesService, ConversionService conversionService) {
        this.devolucionesService = devolucionesService;
        this.conversionService = conversionService;
    }
}
