package com.ltw.online_store.Repository;

import com.ltw.online_store.Entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Long> {
}