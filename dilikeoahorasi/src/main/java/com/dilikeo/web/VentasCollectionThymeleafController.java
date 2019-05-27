package com.dilikeo.web;
import com.dilikeo.domain.Venta;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = VentasCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Venta.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class VentasCollectionThymeleafController {
}
