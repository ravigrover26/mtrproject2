public with sharing class MathUtility {
    public static Integer square(Integer n) {
        return n * n;
    }
    public static Integer cube(Integer n) {
        return n * n * n;
    }
    public static Double power(Integer base, Integer exponent) {
        return Math.pow(base, exponent);
    }
    public static Double root(Integer n) {
        return Math.sqrt(n);   
    }
    public static Integer quadruple(Integer n) {
        return n * n * n * n;
    }
}