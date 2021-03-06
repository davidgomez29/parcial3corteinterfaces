// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.web;

import com.dilikeo.domain.Cambios;
import com.dilikeo.service.api.CambiosService;
import com.dilikeo.web.CambiosDeserializer;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect CambiosDeserializer_Roo_EntityDeserializer {
    
    declare @type: CambiosDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CambiosService
     */
    public CambiosService CambiosDeserializer.getCambiosService() {
        return cambiosService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cambiosService
     */
    public void CambiosDeserializer.setCambiosService(CambiosService cambiosService) {
        this.cambiosService = cambiosService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService CambiosDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void CambiosDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Cambios
     * @throws IOException
     */
    public Cambios CambiosDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Cambios cambios = cambiosService.findOne(id);
        if (cambios == null) {
            throw new NotFoundException("Cambios not found");
        }
        return cambios;
    }
    
}
