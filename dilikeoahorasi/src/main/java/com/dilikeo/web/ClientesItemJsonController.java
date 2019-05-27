package com.dilikeo.web;
import com.dilikeo.domain.Cliente;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ClientesItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cliente.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class ClientesItemJsonController {
}
