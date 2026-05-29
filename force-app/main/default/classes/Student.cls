public with sharing class Student {
    public String name;
    public Integer age;
    public String email;
    public String phone;
    public Student() {
        System.debug('Student class constructor');
    }
    public Student(String name, Integer age, String email, String phone) {
        this.name = name;
        this.age = age;
        this.email = email;
        this.phone = phone;
    }
    public Student(String name, Integer age) {
        this.name = name;
        this.age = age;
        this.email = 'demo@demo.com';
        this.phone = '1234567890';
    }
    public void printInfo() {
        System.debug('Hi, my name is ' + name);
        System.debug('I am ' + age + ' years old');
        System.debug('My email is ' + email);
        System.debug('My phone is ' + phone);
    }
    private void sayHello(String name) {
        System.debug('Hello, my name is ' + name);
    }
}