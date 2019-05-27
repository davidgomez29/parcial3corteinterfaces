package com.dilikeo.web;
import com.dilikeo.domain.DatosVendedor;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = DatosVendedorsItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = DatosVendedor.class, type = ControllerType.ITEM)
@RooThymeleaf
public class DatosVendedorsItemThymeleafController implements ConcurrencyManager<DatosVendedor> {
}
