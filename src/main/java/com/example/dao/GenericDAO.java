package com.example.dao;

import java.util.List;
import java.util.Optional;

/**
 * Interface générique pour les opérations DAO
 * @param <T> Type de l'entité
 * @param <ID> Type de l'identifiant de l'entité
 */
public interface GenericDAO<T, ID> {
    void save(T entity);
    void update(T entity);
    Optional<T> findById(ID id);
    List<T> findAll();
    void delete(ID id);
    void deleteEntity(T entity);
}
