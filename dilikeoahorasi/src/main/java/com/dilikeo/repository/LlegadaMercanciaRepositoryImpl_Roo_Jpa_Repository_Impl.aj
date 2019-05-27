// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.repository;

import com.dilikeo.domain.LlegadaMercancia;
import com.dilikeo.domain.QLlegadaMercancia;
import com.dilikeo.repository.LlegadaMercanciaRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LlegadaMercanciaRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: LlegadaMercanciaRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LlegadaMercanciaRepositoryImpl.PRODUCTOS = "productos";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LlegadaMercanciaRepositoryImpl.CANTIDAD = "cantidad";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LlegadaMercanciaRepositoryImpl.FECHALLEGADA = "fechallegada";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LlegadaMercanciaRepositoryImpl.PROVEEDOR = "proveedor";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LlegadaMercanciaRepositoryImpl.RECEPTOR_PRODUCTOS = "ReceptorProductos";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<LlegadaMercancia> LlegadaMercanciaRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QLlegadaMercancia llegadaMercancia = QLlegadaMercancia.llegadaMercancia;
        
        JPQLQuery<LlegadaMercancia> query = from(llegadaMercancia);
        
        Path<?>[] paths = new Path<?>[] {llegadaMercancia.productos,llegadaMercancia.cantidad,llegadaMercancia.fechallegada,llegadaMercancia.proveedor,llegadaMercancia.ReceptorProductos};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(PRODUCTOS, llegadaMercancia.productos)
			.map(CANTIDAD, llegadaMercancia.cantidad)
			.map(FECHALLEGADA, llegadaMercancia.fechallegada)
			.map(PROVEEDOR, llegadaMercancia.proveedor)
			.map(RECEPTOR_PRODUCTOS, llegadaMercancia.ReceptorProductos);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, llegadaMercancia);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<LlegadaMercancia> LlegadaMercanciaRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QLlegadaMercancia llegadaMercancia = QLlegadaMercancia.llegadaMercancia;
        
        JPQLQuery<LlegadaMercancia> query = from(llegadaMercancia);
        
        Path<?>[] paths = new Path<?>[] {llegadaMercancia.productos,llegadaMercancia.cantidad,llegadaMercancia.fechallegada,llegadaMercancia.proveedor,llegadaMercancia.ReceptorProductos};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(llegadaMercancia.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(PRODUCTOS, llegadaMercancia.productos)
			.map(CANTIDAD, llegadaMercancia.cantidad)
			.map(FECHALLEGADA, llegadaMercancia.fechallegada)
			.map(PROVEEDOR, llegadaMercancia.proveedor)
			.map(RECEPTOR_PRODUCTOS, llegadaMercancia.ReceptorProductos);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, llegadaMercancia);
    }
    
}