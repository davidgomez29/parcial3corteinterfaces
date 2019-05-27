package com.dilikeo.web;
import com.dilikeo.domain.DatosDomiciliario;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = DatosDomiciliariosItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = DatosDomiciliario.class, type = ControllerType.ITEM)
@RooThymeleaf
public class DatosDomiciliariosItemThymeleafController implements ConcurrencyManager<DatosDomiciliario> {
}
