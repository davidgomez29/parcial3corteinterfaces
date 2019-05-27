// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.web;

import com.dilikeo.domain.Venta;
import com.dilikeo.service.api.VentaService;
import com.dilikeo.web.VentasItemJsonController;
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

privileged aspect VentasItemJsonController_Roo_JSON {
    
    declare @type: VentasItemJsonController: @RestController;
    
    declare @type: VentasItemJsonController: @RequestMapping(value = "/api/ventas/{venta}", name = "VentasItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private VentaService VentasItemJsonController.ventaService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param ventaService
     */
    @Autowired
    public VentasItemJsonController.new(VentaService ventaService) {
        this.ventaService = ventaService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return VentaService
     */
    public VentaService VentasItemJsonController.getVentaService() {
        return ventaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ventaService
     */
    public void VentasItemJsonController.setVentaService(VentaService ventaService) {
        this.ventaService = ventaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Venta
     */
    @ModelAttribute
    public Venta VentasItemJsonController.getVenta(@PathVariable("venta") Long id) {
        Venta venta = ventaService.findOne(id);
        if (venta == null) {
            throw new NotFoundException(String.format("Venta with identifier '%s' not found",id));
        }
        return venta;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venta
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> VentasItemJsonController.show(@ModelAttribute Venta venta) {
        return ResponseEntity.ok(venta);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venta
     * @return UriComponents
     */
    public static UriComponents VentasItemJsonController.showURI(Venta venta) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(VentasItemJsonController.class).show(venta))
            .buildAndExpand(venta.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedVenta
     * @param venta
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> VentasItemJsonController.update(@ModelAttribute Venta storedVenta, @Valid @RequestBody Venta venta, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        venta.setId(storedVenta.getId());
        getVentaService().save(venta);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venta
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> VentasItemJsonController.delete(@ModelAttribute Venta venta) {
        getVentaService().delete(venta);
        return ResponseEntity.ok().build();
    }
    
}
