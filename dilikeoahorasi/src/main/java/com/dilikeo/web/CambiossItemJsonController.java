package com.dilikeo.web;
import com.dilikeo.domain.Cambios;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = CambiossItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cambios.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class CambiossItemJsonController {
}
