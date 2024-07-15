package com.codegym.homework_2.repository.impl;

import com.codegym.homework_2.model.Student;
import com.codegym.homework_2.repository.IStudentRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class StudentRepository implements IStudentRepository {
    private static final List<Student> students = new ArrayList<>();
    static{
        students.add(new Student(1,"Hoàng An","Đồng Nai",9));
        students.add(new Student(2,"Hữu Trí","Tây Ninh",8.5f));
        students.add(new Student(3,"Anh Khoa","Sài Gòn",9.5f));
    }

    @Override
    public List<Student> findAll() {
        return students;
    }

    @Override
    public void save(Student student) {
        student.setId(students.get(students.size()-1).getId()+1);
        students.add(student);
    }

    @Override
    public Student getStudentById(Integer id) {
        for (Student student : students) {
            if (student.getId() == id) {
                return student;
            }
        }
        return null;
    }

    @Override
    public void updateStudent(Student student) {
        for(Student s:students){
            if(s.getId() == student.getId()){
                s.setName(student.getName());
                s.setAddress(student.getAddress());
                s.setScore(student.getScore());
                break;
            }
        }
    }
}
