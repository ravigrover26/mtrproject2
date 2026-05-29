public with sharing class Employee {
    public String fName;
    public String lName;
    public Integer salary;
    public String company;
    public Employee(String fName, String lName, Integer salary, String company) {
        this.fName = fName;
        this.lName = lName;
        this.salary = salary;
        this.company = company;
    }
    public Integer getAnnualSalary() {
        return this.salary * 12;
    }
    public void printEmployee() {
        System.debug('Employee name: ' + fName + ' ' + lName);
        System.debug('Employee salary: ' + salary + ' per month');
        System.debug('Employee company: ' + company);
        System.debug('Employee annual salary: ' + getAnnualSalary());
    }
}