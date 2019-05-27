package com.dilikeo.web;
import com.dilikeo.domain.Devoluciones;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = DevolucionesesItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Devoluciones.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class DevolucionesesItemJsonController {
}
