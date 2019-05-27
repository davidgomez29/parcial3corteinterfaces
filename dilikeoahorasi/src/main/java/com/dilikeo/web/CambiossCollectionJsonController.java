package com.dilikeo.web;
import com.dilikeo.domain.Cambios;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = CambiossCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cambios.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class CambiossCollectionJsonController {
}
