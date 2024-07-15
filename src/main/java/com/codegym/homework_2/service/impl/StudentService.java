package com.codegym.homework_2.service.impl;

import com.codegym.homework_2.model.Student;
import com.codegym.homework_2.repository.impl.StudentRepository;
import com.codegym.homework_2.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService implements IStudentService {
    @Autowired
    private StudentRepository studentRepository;

    @Override
    public List<Student> findAll() {
        return studentRepository.findAll();
    }

    @Override
    public void save(Student student) {
        studentRepository.save(student);
    }

    @Override
    public Student getStudentById(Integer id) {
        return studentRepository.getStudentById(id);
    }

    @Override
    public void updateStudent(Student student) {
        studentRepository.updateStudent(student);
    }
}
