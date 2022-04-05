package com.iziconnect.service;

import java.util.List;

/**
 * Base of all service
 * @author KhoiDT
 * create 04/04/2022
 */

public interface BaseService<E,T> {

    /**
     * Function for get list entity
     **/
    List<E> getAll();

    /**
     * Function for get entity from id
     * */
    E get(T id);

    /**
     * Function for save entity to db
     * */
    E save(E entity);

    /**
     * Function for edit entity and save to db
     * */
    E edit(E entity, T id);

    /**
     * Function for delete entity by id
     * */
    T delete(T id);

}
