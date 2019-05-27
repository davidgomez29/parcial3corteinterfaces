// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.web;

import com.dilikeo.domain.Devoluciones;
import com.dilikeo.service.api.DevolucionesService;
import com.dilikeo.web.DevolucionesesItemJsonController;
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

privileged aspect DevolucionesesItemJsonController_Roo_JSON {
    
    declare @type: DevolucionesesItemJsonController: @RestController;
    
    declare @type: DevolucionesesItemJsonController: @RequestMapping(value = "/api/devolucioneses/{devoluciones}", name = "DevolucionesesItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private DevolucionesService DevolucionesesItemJsonController.devolucionesService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param devolucionesService
     */
    @Autowired
    public DevolucionesesItemJsonController.new(DevolucionesService devolucionesService) {
        this.devolucionesService = devolucionesService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return DevolucionesService
     */
    public DevolucionesService DevolucionesesItemJsonController.getDevolucionesService() {
        return devolucionesService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param devolucionesService
     */
    public void DevolucionesesItemJsonController.setDevolucionesService(DevolucionesService devolucionesService) {
        this.devolucionesService = devolucionesService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Devoluciones
     */
    @ModelAttribute
    public Devoluciones DevolucionesesItemJsonController.getDevoluciones(@PathVariable("devoluciones") Long id) {
        Devoluciones devoluciones = devolucionesService.findOne(id);
        if (devoluciones == null) {
            throw new NotFoundException(String.format("Devoluciones with identifier '%s' not found",id));
        }
        return devoluciones;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param devoluciones
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> DevolucionesesItemJsonController.show(@ModelAttribute Devoluciones devoluciones) {
        return ResponseEntity.ok(devoluciones);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param devoluciones
     * @return UriComponents
     */
    public static UriComponents DevolucionesesItemJsonController.showURI(Devoluciones devoluciones) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(DevolucionesesItemJsonController.class).show(devoluciones))
            .buildAndExpand(devoluciones.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedDevoluciones
     * @param devoluciones
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> DevolucionesesItemJsonController.update(@ModelAttribute Devoluciones storedDevoluciones, @Valid @RequestBody Devoluciones devoluciones, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        devoluciones.setId(storedDevoluciones.getId());
        getDevolucionesService().save(devoluciones);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param devoluciones
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> DevolucionesesItemJsonController.delete(@ModelAttribute Devoluciones devoluciones) {
        getDevolucionesService().delete(devoluciones);
        return ResponseEntity.ok().build();
    }
    
}