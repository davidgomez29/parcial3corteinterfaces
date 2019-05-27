package com.dilikeo.web;
import com.dilikeo.domain.DatosDomiciliario;
import com.dilikeo.service.api.DatosDomiciliarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = DatosDomiciliarioDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = DatosDomiciliario.class)
public class DatosDomiciliarioDeserializer extends JsonObjectDeserializer<DatosDomiciliario> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private DatosDomiciliarioService datosDomiciliarioService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param datosDomiciliarioService
     * @param conversionService
     */
    @Autowired
    public DatosDomiciliarioDeserializer(@Lazy DatosDomiciliarioService datosDomiciliarioService, ConversionService conversionService) {
        this.datosDomiciliarioService = datosDomiciliarioService;
        this.conversionService = conversionService;
    }
}
