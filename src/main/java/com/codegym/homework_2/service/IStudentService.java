package com.codegym.homework_2.service;

import com.codegym.homework_2.model.Student;

import java.util.List;

public interface IStudentService {
    List<Student> findAll();

    void save(Student student);

    Student getStudentById(Integer id);

    void updateStudent(Student student);
}
