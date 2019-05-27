// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.web;

import com.dilikeo.domain.DatosVendedor;
import com.dilikeo.service.api.DatosVendedorService;
import com.dilikeo.web.DatosVendedorsItemJsonController;
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

privileged aspect DatosVendedorsItemJsonController_Roo_JSON {
    
    declare @type: DatosVendedorsItemJsonController: @RestController;
    
    declare @type: DatosVendedorsItemJsonController: @RequestMapping(value = "/api/datosvendedors/{datosVendedor}", name = "DatosVendedorsItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private DatosVendedorService DatosVendedorsItemJsonController.datosVendedorService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param datosVendedorService
     */
    @Autowired
    public DatosVendedorsItemJsonController.new(DatosVendedorService datosVendedorService) {
        this.datosVendedorService = datosVendedorService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return DatosVendedorService
     */
    public DatosVendedorService DatosVendedorsItemJsonController.getDatosVendedorService() {
        return datosVendedorService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param datosVendedorService
     */
    public void DatosVendedorsItemJsonController.setDatosVendedorService(DatosVendedorService datosVendedorService) {
        this.datosVendedorService = datosVendedorService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return DatosVendedor
     */
    @ModelAttribute
    public DatosVendedor DatosVendedorsItemJsonController.getDatosVendedor(@PathVariable("datosVendedor") Long id) {
        DatosVendedor datosVendedor = datosVendedorService.findOne(id);
        if (datosVendedor == null) {
            throw new NotFoundException(String.format("DatosVendedor with identifier '%s' not found",id));
        }
        return datosVendedor;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param datosVendedor
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> DatosVendedorsItemJsonController.show(@ModelAttribute DatosVendedor datosVendedor) {
        return ResponseEntity.ok(datosVendedor);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param datosVendedor
     * @return UriComponents
     */
    public static UriComponents DatosVendedorsItemJsonController.showURI(DatosVendedor datosVendedor) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(DatosVendedorsItemJsonController.class).show(datosVendedor))
            .buildAndExpand(datosVendedor.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedDatosVendedor
     * @param datosVendedor
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> DatosVendedorsItemJsonController.update(@ModelAttribute DatosVendedor storedDatosVendedor, @Valid @RequestBody DatosVendedor datosVendedor, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        datosVendedor.setId(storedDatosVendedor.getId());
        getDatosVendedorService().save(datosVendedor);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param datosVendedor
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> DatosVendedorsItemJsonController.delete(@ModelAttribute DatosVendedor datosVendedor) {
        getDatosVendedorService().delete(datosVendedor);
        return ResponseEntity.ok().build();
    }
    
}