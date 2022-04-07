package com.iziconnect.controller;

import com.iziconnect.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/class")
public class ClassController {

    @Autowired
    private ClassService classService;

    @GetMapping("")
    public ResponseEntity<List<Class>> getList(){

        List classList = new ArrayList();
        classList = classService.getAll();
        if(classList.isEmpty()){
            return new ResponseEntity<List<Class>>(HttpStatus.NO_CONTENT);
        }

        return new ResponseEntity<List<Class>>(classList,HttpStatus.OK);

    }

}
