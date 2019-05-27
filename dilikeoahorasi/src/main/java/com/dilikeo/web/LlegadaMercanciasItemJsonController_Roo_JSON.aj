// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.web;

import com.dilikeo.domain.LlegadaMercancia;
import com.dilikeo.service.api.LlegadaMercanciaService;
import com.dilikeo.web.LlegadaMercanciasItemJsonController;
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

privileged aspect LlegadaMercanciasItemJsonController_Roo_JSON {
    
    declare @type: LlegadaMercanciasItemJsonController: @RestController;
    
    declare @type: LlegadaMercanciasItemJsonController: @RequestMapping(value = "/api/llegadamercancias/{llegadaMercancia}", name = "LlegadaMercanciasItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private LlegadaMercanciaService LlegadaMercanciasItemJsonController.llegadaMercanciaService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param llegadaMercanciaService
     */
    @Autowired
    public LlegadaMercanciasItemJsonController.new(LlegadaMercanciaService llegadaMercanciaService) {
        this.llegadaMercanciaService = llegadaMercanciaService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return LlegadaMercanciaService
     */
    public LlegadaMercanciaService LlegadaMercanciasItemJsonController.getLlegadaMercanciaService() {
        return llegadaMercanciaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param llegadaMercanciaService
     */
    public void LlegadaMercanciasItemJsonController.setLlegadaMercanciaService(LlegadaMercanciaService llegadaMercanciaService) {
        this.llegadaMercanciaService = llegadaMercanciaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return LlegadaMercancia
     */
    @ModelAttribute
    public LlegadaMercancia LlegadaMercanciasItemJsonController.getLlegadaMercancia(@PathVariable("llegadaMercancia") Long id) {
        LlegadaMercancia llegadaMercancia = llegadaMercanciaService.findOne(id);
        if (llegadaMercancia == null) {
            throw new NotFoundException(String.format("LlegadaMercancia with identifier '%s' not found",id));
        }
        return llegadaMercancia;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param llegadaMercancia
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> LlegadaMercanciasItemJsonController.show(@ModelAttribute LlegadaMercancia llegadaMercancia) {
        return ResponseEntity.ok(llegadaMercancia);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param llegadaMercancia
     * @return UriComponents
     */
    public static UriComponents LlegadaMercanciasItemJsonController.showURI(LlegadaMercancia llegadaMercancia) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(LlegadaMercanciasItemJsonController.class).show(llegadaMercancia))
            .buildAndExpand(llegadaMercancia.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedLlegadaMercancia
     * @param llegadaMercancia
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> LlegadaMercanciasItemJsonController.update(@ModelAttribute LlegadaMercancia storedLlegadaMercancia, @Valid @RequestBody LlegadaMercancia llegadaMercancia, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        llegadaMercancia.setId(storedLlegadaMercancia.getId());
        getLlegadaMercanciaService().save(llegadaMercancia);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param llegadaMercancia
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> LlegadaMercanciasItemJsonController.delete(@ModelAttribute LlegadaMercancia llegadaMercancia) {
        getLlegadaMercanciaService().delete(llegadaMercancia);
        return ResponseEntity.ok().build();
    }
    
}