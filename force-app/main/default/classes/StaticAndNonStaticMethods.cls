public with sharing class StaticAndNonStaticMethods {
    public String fullName; 
    public static String email;
    
    // Static method can only access static variables
    public static void sayHello() {
        System.debug('Email from static method: ' + email); // ✓ Works - both static
    }
    
    // Instance method can access both static and non-static
    public void checkEmail() {
        System.debug(email + ' is valid');     // ✓ Works - accessing static
        System.debug(fullName + ' owns this'); // ✓ Works - accessing non-static
    }
    
    // If you want to use fullName, make the method non-static
    public void sayHelloInstance() {
        System.debug('Hello, ' + fullName); // ✓ Works - both non-static
    }
}