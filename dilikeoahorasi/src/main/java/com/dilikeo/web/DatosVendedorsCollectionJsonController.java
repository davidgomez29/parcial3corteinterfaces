package com.dilikeo.web;
import com.dilikeo.domain.DatosVendedor;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = DatosVendedorsCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = DatosVendedor.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class DatosVendedorsCollectionJsonController {
}
