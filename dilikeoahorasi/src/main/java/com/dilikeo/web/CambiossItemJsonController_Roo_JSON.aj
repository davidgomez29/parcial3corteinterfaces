// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.web;

import com.dilikeo.domain.Cambios;
import com.dilikeo.service.api.CambiosService;
import com.dilikeo.web.CambiossItemJsonController;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect CambiossItemJsonController_Roo_JSON {
    
    declare @type: CambiossItemJsonController: @RestController;
    
    declare @type: CambiossItemJsonController: @RequestMapping(value = "/api/cambioss/{cambios}", name = "CambiossItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CambiosService CambiossItemJsonController.cambiosService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param cambiosService
     */
    @Autowired
    public CambiossItemJsonController.new(CambiosService cambiosService) {
        this.cambiosService = cambiosService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CambiosService
     */
    public CambiosService CambiossItemJsonController.getCambiosService() {
        return cambiosService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cambiosService
     */
    public void CambiossItemJsonController.setCambiosService(CambiosService cambiosService) {
        this.cambiosService = cambiosService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cambios
     */
    @ModelAttribute
    public Cambios CambiossItemJsonController.getCambios(@PathVariable("cambios") Long id) {
        Cambios cambios = cambiosService.findOne(id);
        if (cambios == null) {
            throw new NotFoundException(String.format("Cambios with identifier '%s' not found",id));
        }
        return cambios;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cambios
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> CambiossItemJsonController.show(@ModelAttribute Cambios cambios) {
        return ResponseEntity.ok(cambios);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cambios
     * @return UriComponents
     */
    public static UriComponents CambiossItemJsonController.showURI(Cambios cambios) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(CambiossItemJsonController.class).show(cambios))
            .buildAndExpand(cambios.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedCambios
     * @param cambios
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> CambiossItemJsonController.update(@ModelAttribute Cambios storedCambios, @Valid @RequestBody Cambios cambios, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        cambios.setId(storedCambios.getId());
        getCambiosService().save(cambios);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cambios
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> CambiossItemJsonController.delete(@ModelAttribute Cambios cambios) {
        getCambiosService().delete(cambios);
        return ResponseEntity.ok().build();
    }
    
}
