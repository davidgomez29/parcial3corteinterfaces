package com.dilikeo.web;
import com.dilikeo.domain.DatosDomiciliario;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = DatosDomiciliariosItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = DatosDomiciliario.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class DatosDomiciliariosItemJsonController {
}
