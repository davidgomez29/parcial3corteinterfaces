package com.dilikeo.web;
import com.dilikeo.domain.LlegadaMercancia;
import com.dilikeo.service.api.LlegadaMercanciaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = LlegadaMercanciaDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = LlegadaMercancia.class)
public class LlegadaMercanciaDeserializer extends JsonObjectDeserializer<LlegadaMercancia> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private LlegadaMercanciaService llegadaMercanciaService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param llegadaMercanciaService
     * @param conversionService
     */
    @Autowired
    public LlegadaMercanciaDeserializer(@Lazy LlegadaMercanciaService llegadaMercanciaService, ConversionService conversionService) {
        this.llegadaMercanciaService = llegadaMercanciaService;
        this.conversionService = conversionService;
    }
}
