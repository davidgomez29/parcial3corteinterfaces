package com.dilikeo.web;
import com.dilikeo.domain.Devoluciones;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = DevolucionesesItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Devoluciones.class, type = ControllerType.ITEM)
@RooThymeleaf
public class DevolucionesesItemThymeleafController implements ConcurrencyManager<Devoluciones> {
}
