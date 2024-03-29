package com.wyu.demo.repository;

import com.wyu.demo.entity.Student;
import com.wyu.demo.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User,Integer> {
    User findByUsernameAndPassword(String username, String password);

    
}
