package com.dilikeo.web;
import com.dilikeo.domain.LlegadaMercancia;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = LlegadaMercanciasItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = LlegadaMercancia.class, type = ControllerType.ITEM)
@RooThymeleaf
public class LlegadaMercanciasItemThymeleafController implements ConcurrencyManager<LlegadaMercancia> {
}
