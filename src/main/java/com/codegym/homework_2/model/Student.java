package com.codegym.homework_2.model;

public class Student {
    private int id;
    private String name;
    private String address;
    private float score;

    public Student() {
    }

    public Student(int id, String name, String address, float score) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.score = score;
    }

    public Student(String name, String address, Float score) {
        this.name = name;
        this.address = address;
        this.score = score;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public float getScore() {
        return score;
    }

    public void setScore(float score) {
        this.score = score;
    }
}
