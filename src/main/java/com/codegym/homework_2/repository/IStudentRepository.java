package com.codegym.homework_2.repository;

import com.codegym.homework_2.model.Student;

import java.util.List;

public interface IStudentRepository {
    List<Student> findAll();

    void save(Student student);

    Student getStudentById(Integer id);

    void updateStudent(Student student);
}
