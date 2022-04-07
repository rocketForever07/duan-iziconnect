package com.iziconnect.service.serviceImpl;

import com.iziconnect.entity.Class;
import com.iziconnect.repository.ClassRepository;
import com.iziconnect.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ClassServiceImpl implements ClassService {

    @Autowired
    private ClassRepository repository;

    @Override
    public List<Class> getAll() {
        return repository.finAll();
    }

    @Override
    public Optional<Class> get(Integer id) {
        return repository.findById(id);
    }

    @Override
    public Class save(Class entity) {
        return null;
    }

    @Override
    public Class edit(Class entity, Integer id) {
        return null;
    }

    @Override
    public Integer delete(Integer id) {
        return null;
    }

    @Override
    public List<Class> getClassIsActive() {
        return null;
    }
}
