package com.codegym.homework_2.controller;

import com.codegym.homework_2.model.Student;
import com.codegym.homework_2.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class StudentController {
    @Autowired
    private IStudentService studentService;
    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }
    @GetMapping("/student")
    public String displayAllStudents(Model model) {
        List<Student> students = studentService.findAll();
        model.addAttribute("students", students);
        return "student/list";
    }
    @GetMapping("/student/create")
    public String createStudent() {
        return "student/create";
    }
    @PostMapping("/student/create")
    public String createStudent(@RequestParam("name") String name,
                                @RequestParam("address") String address,
                                @RequestParam("score") Float score) {
        studentService.save(new Student(name,address,score));

        return "redirect:/student";
    }
    @GetMapping("/student/update/{id}")
    public String editStudents(@PathVariable("id") Integer id, Model model) {
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        return "student/update";
    }
    @PostMapping("student/update/{id}")
    public String updateStudent(@PathVariable("id") Integer id,
                                @RequestParam("name") String name,
                                @RequestParam("address") String address,
                                @RequestParam("score") String score ) {
        Student student = new Student(id,name,address,Float.parseFloat(score));
        studentService.updateStudent(student);
        return "redirect:/student";
    }
}
