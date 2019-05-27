package com.dilikeo.web;
import com.dilikeo.domain.LlegadaMercancia;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = LlegadaMercanciasItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = LlegadaMercancia.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class LlegadaMercanciasItemJsonController {
}
