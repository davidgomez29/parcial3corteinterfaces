// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.service.impl;

import com.dilikeo.domain.Cambios;
import com.dilikeo.repository.CambiosRepository;
import com.dilikeo.service.impl.CambiosServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.validation.MessageI18n;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CambiosServiceImpl_Roo_Service_Impl {
    
    declare @type: CambiosServiceImpl: @Service;
    
    declare @type: CambiosServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CambiosRepository CambiosServiceImpl.cambiosRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param cambiosRepository
     */
    @Autowired
    public CambiosServiceImpl.new(CambiosRepository cambiosRepository) {
        setCambiosRepository(cambiosRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CambiosRepository
     */
    public CambiosRepository CambiosServiceImpl.getCambiosRepository() {
        return cambiosRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cambiosRepository
     */
    public void CambiosServiceImpl.setCambiosRepository(CambiosRepository cambiosRepository) {
        this.cambiosRepository = cambiosRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cambios
     * @return Map
     */
    public Map<String, List<MessageI18n>> CambiosServiceImpl.validate(Cambios cambios) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cambios
     */
    @Transactional
    public void CambiosServiceImpl.delete(Cambios cambios) {
        getCambiosRepository().delete(cambios);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Cambios> CambiosServiceImpl.save(Iterable<Cambios> entities) {
        return getCambiosRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void CambiosServiceImpl.delete(Iterable<Long> ids) {
        List<Cambios> toDelete = getCambiosRepository().findAll(ids);
        getCambiosRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Cambios
     */
    @Transactional
    public Cambios CambiosServiceImpl.save(Cambios entity) {
        return getCambiosRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cambios
     */
    public Cambios CambiosServiceImpl.findOne(Long id) {
        return getCambiosRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cambios
     */
    public Cambios CambiosServiceImpl.findOneForUpdate(Long id) {
        return getCambiosRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Cambios> CambiosServiceImpl.findAll(Iterable<Long> ids) {
        return getCambiosRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Cambios> CambiosServiceImpl.findAll() {
        return getCambiosRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long CambiosServiceImpl.count() {
        return getCambiosRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Cambios> CambiosServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getCambiosRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Cambios> CambiosServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getCambiosRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Cambios> CambiosServiceImpl.getEntityType() {
        return Cambios.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> CambiosServiceImpl.getIdType() {
        return Long.class;
    }
    
}
