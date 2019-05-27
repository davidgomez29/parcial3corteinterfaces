package com.dilikeo.web;
import com.dilikeo.domain.Cliente;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ClientesItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cliente.class, type = ControllerType.ITEM)
@RooThymeleaf
public class ClientesItemThymeleafController implements ConcurrencyManager<Cliente> {
}
