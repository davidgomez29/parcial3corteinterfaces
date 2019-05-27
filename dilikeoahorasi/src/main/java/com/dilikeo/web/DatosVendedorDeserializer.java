package com.dilikeo.web;
import com.dilikeo.domain.DatosVendedor;
import com.dilikeo.service.api.DatosVendedorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = DatosVendedorDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = DatosVendedor.class)
public class DatosVendedorDeserializer extends JsonObjectDeserializer<DatosVendedor> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private DatosVendedorService datosVendedorService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param datosVendedorService
     * @param conversionService
     */
    @Autowired
    public DatosVendedorDeserializer(@Lazy DatosVendedorService datosVendedorService, ConversionService conversionService) {
        this.datosVendedorService = datosVendedorService;
        this.conversionService = conversionService;
    }
}
