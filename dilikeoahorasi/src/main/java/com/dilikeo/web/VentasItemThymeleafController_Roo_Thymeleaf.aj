// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.web;

import com.dilikeo.domain.Garantia;
import com.dilikeo.domain.Producto;
import com.dilikeo.domain.Vendedor;
import com.dilikeo.domain.Venta;
import com.dilikeo.service.api.VentaService;
import com.dilikeo.web.VentasCollectionThymeleafController;
import com.dilikeo.web.VentasItemThymeleafController;
import com.dilikeo.web.VentasItemThymeleafLinkFactory;
import io.springlets.data.web.validation.GenericValidator;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import io.springlets.web.mvc.util.concurrency.ConcurrencyCallback;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import io.springlets.web.mvc.util.concurrency.ConcurrencyTemplate;
import java.util.Arrays;
import java.util.Locale;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

privileged aspect VentasItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: VentasItemThymeleafController: @Controller;
    
    declare @type: VentasItemThymeleafController: @RequestMapping(value = "/ventas/{venta}", name = "VentasItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private VentaService VentasItemThymeleafController.ventaService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource VentasItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<VentasItemThymeleafController> VentasItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<VentasCollectionThymeleafController> VentasItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<Venta> VentasItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<Venta>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param ventaService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public VentasItemThymeleafController.new(VentaService ventaService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setVentaService(ventaService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(VentasItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(VentasCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return VentaService
     */
    public VentaService VentasItemThymeleafController.getVentaService() {
        return ventaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ventaService
     */
    public void VentasItemThymeleafController.setVentaService(VentaService ventaService) {
        this.ventaService = ventaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource VentasItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void VentasItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<VentasItemThymeleafController> VentasItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void VentasItemThymeleafController.setItemLink(MethodLinkBuilderFactory<VentasItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<VentasCollectionThymeleafController> VentasItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void VentasItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<VentasCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Venta
     */
    @ModelAttribute
    public Venta VentasItemThymeleafController.getVenta(@PathVariable("venta") Long id, Locale locale, HttpMethod method) {
        Venta venta = null;
        if (HttpMethod.PUT.equals(method)) {
            venta = ventaService.findOneForUpdate(id);
        } else {
            venta = ventaService.findOne(id);
        }
        
        if (venta == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Venta", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return venta;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venta
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView VentasItemThymeleafController.show(@ModelAttribute Venta venta, Model model) {
        model.addAttribute("venta", venta);
        return new ModelAndView("ventas/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venta
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView VentasItemThymeleafController.showInline(@ModelAttribute Venta venta, Model model) {
        model.addAttribute("venta", venta);
        return new ModelAndView("ventas/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void VentasItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void VentasItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
        model.addAttribute("producto", Arrays.asList(Producto.values()));
        model.addAttribute("garantia", Arrays.asList(Garantia.values()));
        model.addAttribute("vendedor", Arrays.asList(Vendedor.values()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<Venta> VentasItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String VentasItemThymeleafController.getModelName() {
        return "venta";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String VentasItemThymeleafController.getEditViewPath() {
        return "ventas/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer VentasItemThymeleafController.getLastVersion(Venta record) {
        return getVentaService().findOne(record.getId()).getVersion();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView VentasItemThymeleafController.populateAndGetFormView(Venta entity, Model model) {
        // Populate the form with all the necessary elements
        populateForm(model);
        // Add concurrency attribute to the model to show the concurrency form
        // in the current edit view
        model.addAttribute("concurrency", true);
        // Add the new version value to the model.
        model.addAttribute("newVersion", getLastVersion(entity));
        // Add the current pet values to maintain the values introduced by the user
        model.addAttribute(getModelName(), entity);
        // Return the edit view path
        return new org.springframework.web.servlet.ModelAndView(getEditViewPath(), model.asMap());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param binder
     */
    @InitBinder("venta")
    public void VentasItemThymeleafController.initVentaBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(Venta.class, getVentaService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venta
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView VentasItemThymeleafController.editForm(@ModelAttribute Venta venta, Model model) {
        populateForm(model);
        
        model.addAttribute("venta", venta);
        return new ModelAndView("ventas/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venta
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView VentasItemThymeleafController.update(@Valid @ModelAttribute Venta venta, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        Venta savedVenta = getConcurrencyTemplate().execute(venta, model, new ConcurrencyCallback<Venta>() {
            @Override
            public Venta doInConcurrency(Venta venta) throws Exception {
                return getVentaService().save(venta);
            }
        });
        UriComponents showURI = getItemLink().to(VentasItemThymeleafLinkFactory.SHOW).with("venta", savedVenta.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param venta
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> VentasItemThymeleafController.delete(@ModelAttribute Venta venta) {
        getVentaService().delete(venta);
        return ResponseEntity.ok().build();
    }
    
}
