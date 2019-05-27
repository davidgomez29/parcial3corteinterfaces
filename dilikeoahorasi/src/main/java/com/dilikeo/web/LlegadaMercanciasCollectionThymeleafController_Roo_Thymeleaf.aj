// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.web;

import ar.com.fdvs.dj.core.DynamicJasperHelper;
import ar.com.fdvs.dj.core.layout.ClassicLayoutManager;
import ar.com.fdvs.dj.domain.builders.ColumnBuilderException;
import ar.com.fdvs.dj.domain.builders.FastReportBuilder;
import com.dilikeo.domain.LlegadaMercancia;
import com.dilikeo.domain.Producto;
import com.dilikeo.domain.Proveedor;
import com.dilikeo.domain.Vendedor;
import com.dilikeo.service.api.LlegadaMercanciaService;
import com.dilikeo.web.LlegadaMercanciasCollectionThymeleafController;
import com.dilikeo.web.LlegadaMercanciasItemThymeleafController;
import com.dilikeo.web.LlegadaMercanciasItemThymeleafLinkFactory;
import com.dilikeo.web.reports.ExportingErrorException;
import com.dilikeo.web.reports.JasperReportsCsvExporter;
import com.dilikeo.web.reports.JasperReportsExporter;
import com.dilikeo.web.reports.JasperReportsPdfExporter;
import com.dilikeo.web.reports.JasperReportsXlsExporter;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.datatables.ConvertedDatatablesData;
import io.springlets.data.web.datatables.Datatables;
import io.springlets.data.web.datatables.DatatablesColumns;
import io.springlets.data.web.datatables.DatatablesPageable;
import io.springlets.data.web.select2.Select2DataSupport;
import io.springlets.data.web.select2.Select2DataWithConversion;
import io.springlets.data.web.validation.GenericValidator;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import org.apache.commons.lang3.StringUtils;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.convert.ConversionService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

privileged aspect LlegadaMercanciasCollectionThymeleafController_Roo_Thymeleaf {
    
    declare @type: LlegadaMercanciasCollectionThymeleafController: @Controller;
    
    declare @type: LlegadaMercanciasCollectionThymeleafController: @RequestMapping(value = "/llegadamercancias", name = "LlegadaMercanciasCollectionThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private LlegadaMercanciaService LlegadaMercanciasCollectionThymeleafController.llegadaMercanciaService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource LlegadaMercanciasCollectionThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<LlegadaMercanciasItemThymeleafController> LlegadaMercanciasCollectionThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<LlegadaMercanciasCollectionThymeleafController> LlegadaMercanciasCollectionThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ConversionService LlegadaMercanciasCollectionThymeleafController.conversionService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param llegadaMercanciaService
     * @param conversionService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public LlegadaMercanciasCollectionThymeleafController.new(LlegadaMercanciaService llegadaMercanciaService, ConversionService conversionService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setLlegadaMercanciaService(llegadaMercanciaService);
        setConversionService(conversionService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(LlegadaMercanciasItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(LlegadaMercanciasCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return LlegadaMercanciaService
     */
    public LlegadaMercanciaService LlegadaMercanciasCollectionThymeleafController.getLlegadaMercanciaService() {
        return llegadaMercanciaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param llegadaMercanciaService
     */
    public void LlegadaMercanciasCollectionThymeleafController.setLlegadaMercanciaService(LlegadaMercanciaService llegadaMercanciaService) {
        this.llegadaMercanciaService = llegadaMercanciaService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource LlegadaMercanciasCollectionThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void LlegadaMercanciasCollectionThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<LlegadaMercanciasItemThymeleafController> LlegadaMercanciasCollectionThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void LlegadaMercanciasCollectionThymeleafController.setItemLink(MethodLinkBuilderFactory<LlegadaMercanciasItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<LlegadaMercanciasCollectionThymeleafController> LlegadaMercanciasCollectionThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void LlegadaMercanciasCollectionThymeleafController.setCollectionLink(MethodLinkBuilderFactory<LlegadaMercanciasCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService LlegadaMercanciasCollectionThymeleafController.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void LlegadaMercanciasCollectionThymeleafController.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "list")
    public ModelAndView LlegadaMercanciasCollectionThymeleafController.list(Model model) {
        return new ModelAndView("llegadamercancias/list");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(produces = Datatables.MEDIA_TYPE, name = "datatables", value = "/dt")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<LlegadaMercancia>> LlegadaMercanciasCollectionThymeleafController.datatables(DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        Page<LlegadaMercancia> llegadaMercancias = getLlegadaMercanciaService().findAll(search, pageable);
        long totalLlegadaMercanciasCount = llegadaMercancias.getTotalElements();
        if (search != null && StringUtils.isNotBlank(search.getText())) {
            totalLlegadaMercanciasCount = getLlegadaMercanciaService().count();
        }
        ConvertedDatatablesData<LlegadaMercancia> datatablesData = new ConvertedDatatablesData<LlegadaMercancia>(llegadaMercancias, totalLlegadaMercanciasCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(datatablesData);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(produces = Datatables.MEDIA_TYPE, name = "datatablesByIdsIn", value = "/dtByIdsIn")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<LlegadaMercancia>> LlegadaMercanciasCollectionThymeleafController.datatablesByIdsIn(@RequestParam("ids") List<Long> ids, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        Page<LlegadaMercancia> llegadaMercancias = getLlegadaMercanciaService().findAllByIdsIn(ids, search, pageable);
        long totalLlegadaMercanciasCount = llegadaMercancias.getTotalElements();
        if (search != null && StringUtils.isNotBlank(search.getText())) {
            totalLlegadaMercanciasCount = getLlegadaMercanciaService().count();
        }
        ConvertedDatatablesData<LlegadaMercancia> datatablesData = new ConvertedDatatablesData<LlegadaMercancia>(llegadaMercancias, totalLlegadaMercanciasCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(datatablesData);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param search
     * @param pageable
     * @param locale
     * @return ResponseEntity
     */
    @GetMapping(produces = MediaType.APPLICATION_JSON_VALUE, name = "select2", value = "/s2")
    @ResponseBody
    public ResponseEntity<Select2DataSupport<LlegadaMercancia>> LlegadaMercanciasCollectionThymeleafController.select2(GlobalSearch search, Pageable pageable, Locale locale) {
        Page<LlegadaMercancia> llegadaMercancias = getLlegadaMercanciaService().findAll(search, pageable);
        String idExpression = "#{id}";
        Select2DataSupport<LlegadaMercancia> select2Data = new Select2DataWithConversion<LlegadaMercancia>(llegadaMercancias, idExpression, getConversionService());
        return ResponseEntity.ok(select2Data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param binder
     */
    @InitBinder("llegadaMercancia")
    public void LlegadaMercanciasCollectionThymeleafController.initLlegadaMercanciaBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(LlegadaMercancia.class, getLlegadaMercanciaService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void LlegadaMercanciasCollectionThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("fechallegada_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void LlegadaMercanciasCollectionThymeleafController.populateForm(Model model) {
        populateFormats(model);
        model.addAttribute("productos", Arrays.asList(Producto.values()));
        model.addAttribute("proveedor", Arrays.asList(Proveedor.values()));
        model.addAttribute("ReceptorProductos", Arrays.asList(Vendedor.values()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param llegadaMercancia
     * @param result
     * @param model
     * @return ModelAndView
     */
    @PostMapping(name = "create")
    public ModelAndView LlegadaMercanciasCollectionThymeleafController.create(@Valid @ModelAttribute LlegadaMercancia llegadaMercancia, BindingResult result, Model model) {
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("llegadamercancias/create");
        }
        LlegadaMercancia newLlegadaMercancia = getLlegadaMercanciaService().save(llegadaMercancia);
        UriComponents showURI = getItemLink().to(LlegadaMercanciasItemThymeleafLinkFactory.SHOW).with("llegadaMercancia", newLlegadaMercancia.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/create-form", name = "createForm")
    public ModelAndView LlegadaMercanciasCollectionThymeleafController.createForm(Model model) {
        populateForm(model);
        
        model.addAttribute("llegadaMercancia", new LlegadaMercancia());
        return new ModelAndView("llegadamercancias/create");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    @ResponseBody
    public ResponseEntity<?> LlegadaMercanciasCollectionThymeleafController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getLlegadaMercanciaService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * Method that obtains the filtered and ordered records using the Datatables information and 
     * export them to a new report file. (It ignores the current pagination).
     * 
     * To generate the report file it uses the `DynamicJasper` library
     * (http://dynamicjasper.com). This library allows developers to generate reports dynamically
     * without use an specific template to each entity.
     * 
     * To customize the appearance of ALL generated reports, you could customize the 
     * "export_default.jrxml" template located in "src/main/resources/templates/reports/". However,
     * if you want to customize the appearance of this specific report, you could create a new
     * ".jrxml" file and provide it to the library replacing the `builder.setTemplateFile();`
     * operation used in this implementation.
     * 
     * @param search GlobalSearch that contains the filter provided by the Datatables component.
     * @param pageable Pageable that contains the Sort info provided by the Datatabes component.
     * @param datatablesColumns Columns displayed in the Datatables component.
     * @param response The HttpServletResponse.
     * @param exporter An specific JasperReportsExporter to be used during export process.
     * @param fileName The final filename to use.
     * @param locale The current Locale in the view context.
     */
    public void LlegadaMercanciasCollectionThymeleafController.export(GlobalSearch search, @PageableDefault(size = 2147483647) Pageable pageable, String[] datatablesColumns, HttpServletResponse response, JasperReportsExporter exporter, String fileName, Locale locale) {
        // Obtain the filtered and ordered elements
        Page<LlegadaMercancia> llegadaMercancias = getLlegadaMercanciaService().findAll(search, pageable);
        
        // Prevent generation of reports with empty data
        if (llegadaMercancias == null || llegadaMercancias.getContent().isEmpty()) {
            return;
        }
        
        // Creates a new ReportBuilder using DynamicJasper library
        FastReportBuilder builder = new FastReportBuilder();
        
        // IMPORTANT: By default, this application uses "export_default.jrxml"
        // to generate all reports. If you want to customize this specific report,
        // create a new ".jrxml" template and customize it. (Take in account the 
        // DynamicJasper restrictions: 
        // http://dynamicjasper.com/2010/10/06/how-to-use-custom-jrxml-templates/)
        builder.setTemplateFile("templates/reports/export_default.jrxml");
        
        // The generated report will display the same columns as the Datatables component.
        // However, this is not mandatory. You could edit this code if you want to ignore
        // the provided datatablesColumns
        if (datatablesColumns != null) {
            for (String column : datatablesColumns) {
                // Delegates in addColumnToReportBuilder to include each datatables column
                // to the report builder
                addColumnToReportBuilder(column, builder, locale, fileName);
            }
        }
        
        // This property resizes the columns to use full width page.
        // Set false value if you want to use the specific width of each column.
        builder.setUseFullPageWidth(true);
        
        // Creates a new Jasper Reports Datasource using the obtained elements
        JRDataSource ds = new JRBeanCollectionDataSource(llegadaMercancias.getContent());
        
        // Generates the JasperReport
        JasperPrint jp;
        try {
            jp = DynamicJasperHelper.generateJasperPrint(builder.build(), new ClassicLayoutManager(), ds);
        }
        catch (JRException e) {
            String errorMessage = getMessageSource().getMessage("error_exportingErrorException", 
                new Object[] {StringUtils.substringAfterLast(fileName, ".").toUpperCase()}, 
                String.format("Error while exporting data to StringUtils file", StringUtils.
                    substringAfterLast(fileName, ".").toUpperCase()), locale);
            throw new ExportingErrorException(errorMessage);
        }
        
        // Converts the JaspertReport element to a ByteArrayOutputStream and
        // write it into the response stream using the provided JasperReportExporter
        try {
            exporter.export(jp, fileName, response);
        }
        catch (JRException e) {
            String errorMessage = getMessageSource().getMessage("error_exportingErrorException", 
                new Object[] {StringUtils.substringAfterLast(fileName, ".").toUpperCase()}, 
                String.format("Error while exporting data to StringUtils file", StringUtils.
                    substringAfterLast(fileName, ".").toUpperCase()), locale);
            throw new ExportingErrorException(errorMessage);
        }
        catch (IOException e) {
            String errorMessage = getMessageSource().getMessage("error_exportingErrorException", 
                new Object[] {StringUtils.substringAfterLast(fileName, ".").toUpperCase()}, 
                String.format("Error while exporting data to StringUtils file", StringUtils.
                    substringAfterLast(fileName, ".").toUpperCase()), locale);
            throw new ExportingErrorException(errorMessage);
        }
    }
    
    /**
     * It delegates in the `export` method providing the necessary information
     * to generate a CSV report.
     * 
     * @param search The GlobalSearch that contains the filter provided by the Datatables component
     * @param pageable The Pageable that contains the Sort info provided by the Datatabes component
     * @param datatablesColumns The Columns displayed in the Datatables component
     * @param response The HttpServletResponse
     * @return ResponseEntity
     */
    @GetMapping(name = "exportCsv", value = "/export/csv")
    @ResponseBody
    public ResponseEntity<?> LlegadaMercanciasCollectionThymeleafController.exportCsv(GlobalSearch search, @PageableDefault(size = 2147483647) Pageable pageable, @RequestParam("datatablesColumns") String[] datatablesColumns, HttpServletResponse response, Locale locale) {
        export(search, pageable, datatablesColumns, response, new JasperReportsCsvExporter(), "llegadaMercancias_report.csv", locale);
        return ResponseEntity.ok().build();
    }
    
    /**
     * It delegates in the `export` method providing the necessary information
     * to generate a PDF report.
     * 
     * @param search The GlobalSearch that contains the filter provided by the Datatables component
     * @param pageable The Pageable that contains the Sort info provided by the Datatabes component
     * @param datatablesColumns The Columns displayed in the Datatables component
     * @param response The HttpServletResponse
     * @return ResponseEntity
     */
    @GetMapping(name = "exportPdf", value = "/export/pdf")
    @ResponseBody
    public ResponseEntity<?> LlegadaMercanciasCollectionThymeleafController.exportPdf(GlobalSearch search, @PageableDefault(size = 2147483647) Pageable pageable, @RequestParam("datatablesColumns") String[] datatablesColumns, HttpServletResponse response, Locale locale) {
        export(search, pageable, datatablesColumns, response, new JasperReportsPdfExporter(), "llegadaMercancias_report.pdf", locale);
        return ResponseEntity.ok().build();
    }
    
    /**
     * It delegates in the `export` method providing the necessary information
     * to generate a XLS report.
     * 
     * @param search The GlobalSearch that contains the filter provided by the Datatables component
     * @param pageable The Pageable that contains the Sort info provided by the Datatabes component
     * @param datatablesColumns The Columns displayed in the Datatables component
     * @param response The HttpServletResponse
     * @return ResponseEntity
     */
    @GetMapping(name = "exportXls", value = "/export/xls")
    @ResponseBody
    public ResponseEntity<?> LlegadaMercanciasCollectionThymeleafController.exportXls(GlobalSearch search, @PageableDefault(size = 2147483647) Pageable pageable, @RequestParam("datatablesColumns") String[] datatablesColumns, HttpServletResponse response, Locale locale) {
        export(search, pageable, datatablesColumns, response, new JasperReportsXlsExporter(), "llegadaMercancias_report.xls", locale);
        return ResponseEntity.ok().build();
    }
    
    /**
     * This method contains all the entity fields that are able to be displayed in a 
     * report. The developer could add a new column to the report builder providing the 
     * field name and the builder where the new field will be added as column.
     * 
     * @param columnName the field name to show as column
     * @param builder The builder where the new field will be added as column.
     */
    public void LlegadaMercanciasCollectionThymeleafController.addColumnToReportBuilder(String columnName, FastReportBuilder builder, Locale locale, String fileName) {
        try {
        if (columnName.equals("id")) {
            builder.addColumn(getMessageSource().getMessage("label_llegadamercancia_id", null, "Id", locale), "id", Long.class.getName(), 50);
        }
        else if (columnName.equals("version")) {
            builder.addColumn(getMessageSource().getMessage("label_llegadamercancia_version", null, "Version", locale), "version", Integer.class.getName(), 100);
        }
        else if (columnName.equals("productos")) {
            builder.addColumn(getMessageSource().getMessage("label_llegadamercancia_productos", null, "Productos", locale), "productos", Producto.class.getName(), 100);
        }
        else if (columnName.equals("cantidad")) {
            builder.addColumn(getMessageSource().getMessage("label_llegadamercancia_cantidad", null, "Cantidad", locale), "cantidad", String.class.getName(), 100);
        }
        else if (columnName.equals("fechallegada")) {
            builder.addColumn(getMessageSource().getMessage("label_llegadamercancia_fechallegada", null, "Fechallegada", locale), "fechallegada", Date.class.getName(), 100);
        }
        else if (columnName.equals("proveedor")) {
            builder.addColumn(getMessageSource().getMessage("label_llegadamercancia_proveedor", null, "Proveedor", locale), "proveedor", Proveedor.class.getName(), 100);
        }
        else if (columnName.equals("ReceptorProductos")) {
            builder.addColumn(getMessageSource().getMessage("label_llegadamercancia_receptorproductos", null, "Receptor Productos", locale), "ReceptorProductos", Vendedor.class.getName(), 100);
        }
        }
        catch (ColumnBuilderException e) {
            String errorMessage = getMessageSource().getMessage("error_exportingErrorException", 
                new Object[] {StringUtils.substringAfterLast(fileName, ".").toUpperCase()}, 
                String.format("Error while exporting data to StringUtils file", StringUtils.
                    substringAfterLast(fileName, ".").toUpperCase()), locale);
            throw new ExportingErrorException(errorMessage);
        }
        catch (ClassNotFoundException e) {
            String errorMessage = getMessageSource().getMessage("error_exportingErrorException", 
                new Object[] {StringUtils.substringAfterLast(fileName, ".").toUpperCase()}, 
                String.format("Error while exporting data to StringUtils file", StringUtils.
                    substringAfterLast(fileName, ".").toUpperCase()), locale);
            throw new ExportingErrorException(errorMessage);
        }
    }
    
}