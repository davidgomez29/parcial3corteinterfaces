package com.dilikeo.web;
import com.dilikeo.domain.Venta;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = VentasItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Venta.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class VentasItemJsonController {
}
