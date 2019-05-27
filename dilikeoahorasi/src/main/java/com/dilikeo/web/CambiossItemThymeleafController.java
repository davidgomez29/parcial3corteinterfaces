package com.dilikeo.web;
import com.dilikeo.domain.Cambios;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = CambiossItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cambios.class, type = ControllerType.ITEM)
@RooThymeleaf
public class CambiossItemThymeleafController implements ConcurrencyManager<Cambios> {
}
