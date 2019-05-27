package com.dilikeo.web;
import com.dilikeo.domain.Cambios;
import com.dilikeo.service.api.CambiosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = CambiosDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Cambios.class)
public class CambiosDeserializer extends JsonObjectDeserializer<Cambios> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private CambiosService cambiosService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param cambiosService
     * @param conversionService
     */
    @Autowired
    public CambiosDeserializer(@Lazy CambiosService cambiosService, ConversionService conversionService) {
        this.cambiosService = cambiosService;
        this.conversionService = conversionService;
    }
}
