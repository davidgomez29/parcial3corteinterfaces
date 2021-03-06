// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.web;

import com.dilikeo.domain.Venta;
import com.dilikeo.service.api.VentaService;
import com.dilikeo.web.VentasCollectionJsonController;
import com.dilikeo.web.VentasItemJsonController;
import io.springlets.data.domain.GlobalSearch;
import java.util.Collection;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect VentasCollectionJsonController_Roo_JSON {
    
    declare @type: VentasCollectionJsonController: @RestController;
    
    declare @type: VentasCollectionJsonController: @RequestMapping(value = "/api/ventas", name = "VentasCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private VentaService VentasCollectionJsonController.ventaService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param ventaService
     */
    @Autowired
    public VentasCollectionJsonController.new(VentaService ventaService) {
        this.ventaService = ventaService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return VentaService
     */
    public VentaService VentasCollectionJsonController.getVentaService() {
        return ventaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ventaService
     */
    public void VentasCollectionJsonController.setVentaService(VentaService ventaService) {
        this.ventaService = ventaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Venta>> VentasCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Venta> ventas = getVentaService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(ventas);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents VentasCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(VentasCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venta
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> VentasCollectionJsonController.create(@Valid @RequestBody Venta venta, BindingResult result) {
        
        if (venta.getId() != null || venta.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        Venta newVenta = getVentaService().save(venta);
        UriComponents showURI = VentasItemJsonController.showURI(newVenta);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ventas
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> VentasCollectionJsonController.createBatch(@Valid @RequestBody Collection<Venta> ventas, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getVentaService().save(ventas);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ventas
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> VentasCollectionJsonController.updateBatch(@Valid @RequestBody Collection<Venta> ventas, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getVentaService().save(ventas);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> VentasCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getVentaService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}
