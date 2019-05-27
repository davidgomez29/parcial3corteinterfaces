// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.web;

import com.dilikeo.domain.Cliente;
import com.dilikeo.service.api.ClienteService;
import com.dilikeo.web.ClientesItemJsonController;
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

privileged aspect ClientesItemJsonController_Roo_JSON {
    
    declare @type: ClientesItemJsonController: @RestController;
    
    declare @type: ClientesItemJsonController: @RequestMapping(value = "/api/clientes/{cliente}", name = "ClientesItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ClienteService ClientesItemJsonController.clienteService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param clienteService
     */
    @Autowired
    public ClientesItemJsonController.new(ClienteService clienteService) {
        this.clienteService = clienteService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ClienteService
     */
    public ClienteService ClientesItemJsonController.getClienteService() {
        return clienteService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param clienteService
     */
    public void ClientesItemJsonController.setClienteService(ClienteService clienteService) {
        this.clienteService = clienteService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cliente
     */
    @ModelAttribute
    public Cliente ClientesItemJsonController.getCliente(@PathVariable("cliente") Long id) {
        Cliente cliente = clienteService.findOne(id);
        if (cliente == null) {
            throw new NotFoundException(String.format("Cliente with identifier '%s' not found",id));
        }
        return cliente;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> ClientesItemJsonController.show(@ModelAttribute Cliente cliente) {
        return ResponseEntity.ok(cliente);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @return UriComponents
     */
    public static UriComponents ClientesItemJsonController.showURI(Cliente cliente) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ClientesItemJsonController.class).show(cliente))
            .buildAndExpand(cliente.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedCliente
     * @param cliente
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> ClientesItemJsonController.update(@ModelAttribute Cliente storedCliente, @Valid @RequestBody Cliente cliente, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        cliente.setId(storedCliente.getId());
        getClienteService().save(cliente);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ClientesItemJsonController.delete(@ModelAttribute Cliente cliente) {
        getClienteService().delete(cliente);
        return ResponseEntity.ok().build();
    }
    
}
