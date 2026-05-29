public with sharing class Person {
    public String name;
    public Integer age;
    public Boolean hasDriversLicense;
    public Person(String name, Integer age, Boolean hasDriversLicense) {
        this.name = name;
        this.age = age;
        this.hasDriversLicense = hasDriversLicense;
    }
    public Boolean isAdult(){
        if (age >= 18) {
            return true;
        } else {
            return false;
        }
    }
    public Boolean canDrive(){
        if (isAdult() || hasDriversLicense) {
            return true;
        } else {
            return false;
        }
    }
    public void findEligibilityForDrivingLicense(){
        if (canDrive()) {
            System.debug('You are eligible for driving license');
        } else {
            System.debug('You are not eligible for driving license');
        }
    }
}