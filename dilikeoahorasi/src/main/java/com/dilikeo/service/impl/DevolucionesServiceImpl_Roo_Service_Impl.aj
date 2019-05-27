// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.dilikeo.service.impl;

import com.dilikeo.domain.Devoluciones;
import com.dilikeo.repository.DevolucionesRepository;
import com.dilikeo.service.impl.DevolucionesServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.validation.MessageI18n;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DevolucionesServiceImpl_Roo_Service_Impl {
    
    declare @type: DevolucionesServiceImpl: @Service;
    
    declare @type: DevolucionesServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private DevolucionesRepository DevolucionesServiceImpl.devolucionesRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param devolucionesRepository
     */
    @Autowired
    public DevolucionesServiceImpl.new(DevolucionesRepository devolucionesRepository) {
        setDevolucionesRepository(devolucionesRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return DevolucionesRepository
     */
    public DevolucionesRepository DevolucionesServiceImpl.getDevolucionesRepository() {
        return devolucionesRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param devolucionesRepository
     */
    public void DevolucionesServiceImpl.setDevolucionesRepository(DevolucionesRepository devolucionesRepository) {
        this.devolucionesRepository = devolucionesRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param devoluciones
     * @return Map
     */
    public Map<String, List<MessageI18n>> DevolucionesServiceImpl.validate(Devoluciones devoluciones) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param devoluciones
     */
    @Transactional
    public void DevolucionesServiceImpl.delete(Devoluciones devoluciones) {
        getDevolucionesRepository().delete(devoluciones);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Devoluciones> DevolucionesServiceImpl.save(Iterable<Devoluciones> entities) {
        return getDevolucionesRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void DevolucionesServiceImpl.delete(Iterable<Long> ids) {
        List<Devoluciones> toDelete = getDevolucionesRepository().findAll(ids);
        getDevolucionesRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Devoluciones
     */
    @Transactional
    public Devoluciones DevolucionesServiceImpl.save(Devoluciones entity) {
        return getDevolucionesRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Devoluciones
     */
    public Devoluciones DevolucionesServiceImpl.findOne(Long id) {
        return getDevolucionesRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Devoluciones
     */
    public Devoluciones DevolucionesServiceImpl.findOneForUpdate(Long id) {
        return getDevolucionesRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Devoluciones> DevolucionesServiceImpl.findAll(Iterable<Long> ids) {
        return getDevolucionesRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Devoluciones> DevolucionesServiceImpl.findAll() {
        return getDevolucionesRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long DevolucionesServiceImpl.count() {
        return getDevolucionesRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Devoluciones> DevolucionesServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getDevolucionesRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Devoluciones> DevolucionesServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getDevolucionesRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Devoluciones> DevolucionesServiceImpl.getEntityType() {
        return Devoluciones.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> DevolucionesServiceImpl.getIdType() {
        return Long.class;
    }
    
}
