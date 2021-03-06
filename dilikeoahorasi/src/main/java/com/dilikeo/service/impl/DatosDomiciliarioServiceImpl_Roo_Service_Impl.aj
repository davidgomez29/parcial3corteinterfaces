// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.service.impl;

import com.dilikeo.domain.DatosDomiciliario;
import com.dilikeo.repository.DatosDomiciliarioRepository;
import com.dilikeo.service.impl.DatosDomiciliarioServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.validation.MessageI18n;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DatosDomiciliarioServiceImpl_Roo_Service_Impl {
    
    declare @type: DatosDomiciliarioServiceImpl: @Service;
    
    declare @type: DatosDomiciliarioServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private DatosDomiciliarioRepository DatosDomiciliarioServiceImpl.datosDomiciliarioRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param datosDomiciliarioRepository
     */
    @Autowired
    public DatosDomiciliarioServiceImpl.new(DatosDomiciliarioRepository datosDomiciliarioRepository) {
        setDatosDomiciliarioRepository(datosDomiciliarioRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return DatosDomiciliarioRepository
     */
    public DatosDomiciliarioRepository DatosDomiciliarioServiceImpl.getDatosDomiciliarioRepository() {
        return datosDomiciliarioRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param datosDomiciliarioRepository
     */
    public void DatosDomiciliarioServiceImpl.setDatosDomiciliarioRepository(DatosDomiciliarioRepository datosDomiciliarioRepository) {
        this.datosDomiciliarioRepository = datosDomiciliarioRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param datosdomiciliario
     * @return Map
     */
    public Map<String, List<MessageI18n>> DatosDomiciliarioServiceImpl.validate(DatosDomiciliario datosdomiciliario) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param datosDomiciliario
     */
    @Transactional
    public void DatosDomiciliarioServiceImpl.delete(DatosDomiciliario datosDomiciliario) {
        getDatosDomiciliarioRepository().delete(datosDomiciliario);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<DatosDomiciliario> DatosDomiciliarioServiceImpl.save(Iterable<DatosDomiciliario> entities) {
        return getDatosDomiciliarioRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void DatosDomiciliarioServiceImpl.delete(Iterable<Long> ids) {
        List<DatosDomiciliario> toDelete = getDatosDomiciliarioRepository().findAll(ids);
        getDatosDomiciliarioRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return DatosDomiciliario
     */
    @Transactional
    public DatosDomiciliario DatosDomiciliarioServiceImpl.save(DatosDomiciliario entity) {
        return getDatosDomiciliarioRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return DatosDomiciliario
     */
    public DatosDomiciliario DatosDomiciliarioServiceImpl.findOne(Long id) {
        return getDatosDomiciliarioRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return DatosDomiciliario
     */
    public DatosDomiciliario DatosDomiciliarioServiceImpl.findOneForUpdate(Long id) {
        return getDatosDomiciliarioRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<DatosDomiciliario> DatosDomiciliarioServiceImpl.findAll(Iterable<Long> ids) {
        return getDatosDomiciliarioRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<DatosDomiciliario> DatosDomiciliarioServiceImpl.findAll() {
        return getDatosDomiciliarioRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long DatosDomiciliarioServiceImpl.count() {
        return getDatosDomiciliarioRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<DatosDomiciliario> DatosDomiciliarioServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getDatosDomiciliarioRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<DatosDomiciliario> DatosDomiciliarioServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getDatosDomiciliarioRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<DatosDomiciliario> DatosDomiciliarioServiceImpl.getEntityType() {
        return DatosDomiciliario.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> DatosDomiciliarioServiceImpl.getIdType() {
        return Long.class;
    }
    
}
