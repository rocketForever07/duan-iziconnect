package com.iziconnect.service;

import com.iziconnect.entity.Class;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ClassService extends BaseService<Class,Integer>{

    List<Class> getClassIsActive();

}
