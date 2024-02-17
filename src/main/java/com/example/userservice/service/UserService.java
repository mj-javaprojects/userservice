package com.example.userservice.service;

import com.example.userservice.model.User;

import java.util.Optional;

public interface UserService {
    public void save(User user);
    Optional<User> findById(long userId);
    public void delete(long userId);
    public Iterable<User> GetAllUsers();
}
