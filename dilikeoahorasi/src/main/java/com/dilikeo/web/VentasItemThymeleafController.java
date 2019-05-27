package com.dilikeo.web;
import com.dilikeo.domain.Venta;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = VentasItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Venta.class, type = ControllerType.ITEM)
@RooThymeleaf
public class VentasItemThymeleafController implements ConcurrencyManager<Venta> {
}
