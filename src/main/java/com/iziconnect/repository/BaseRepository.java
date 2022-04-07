package com.iziconnect.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BaseRepository<T,K> extends JpaRepository<T,K> {

    List<T> finAll();

}
