public with sharing class Calculator {
    public Calculator() {
        System.debug('Calculator class constructor');
    }
    public Integer add(Integer a, Integer b) {
        return a + b;
    }
    public Integer subtract(Integer a, Integer b) {
        return a - b;
    }
    public Integer multiply(Integer a, Integer b) {
        return a * b;
    }
    public Integer divide(Integer a, Integer b) {
        return a / b;
    }
    public Integer max(Integer a, Integer b) {
        return Math.max(a, b);
    }
    public Integer min(Integer a, Integer b) {
        return Math.min(a, b);
    }
    public Integer abs(Integer a) {
        return Math.abs(a);
    }
    public Double pow(Integer a, Integer b) {
        return Math.pow(a, b);
    }
}