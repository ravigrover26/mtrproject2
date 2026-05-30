/**
 * @description Utility class providing common mathematical operations.
 *              All methods validate inputs and throw MathUtilityException on invalid arguments.
 */
public with sharing class MathUtility {

    /**
     * @description Returns the square of the given integer (n²).
     * @param n The integer to square. Must not be null.
     * @return n² as a Long to avoid integer overflow on large inputs.
     */
    public static Long square(Integer n) {
        validateNotNull(n, 'n');
        return (Long) n * n;
    }

    /**
     * @description Returns the cube of the given integer (n³).
     * @param n The integer to cube. Must not be null.
     * @return n³ as a Long to avoid integer overflow on large inputs.
     */
    public static Long cube(Integer n) {
        validateNotNull(n, 'n');
        return (Long) n * n * n;
    }

    /**
     * @description Raises a base to the given exponent (base^exponent).
     * @param base     The base integer. Must not be null.
     * @param exponent The exponent integer. Must not be null.
     * @return base^exponent as a Double.
     */
    public static Double power(Integer base, Integer exponent) {
        validateNotNull(base, 'base');
        validateNotNull(exponent, 'exponent');
        return Math.pow(base, exponent);
    }

    /**
     * @description Returns the square root of the given non-negative integer.
     * @param n The integer to take the square root of. Must not be null or negative.
     * @return √n as a Double.
     */
    public static Double root(Integer n) {
        validateNotNull(n, 'n');
        if (n < 0) {
            throw new MathUtilityException('Cannot take square root of a negative number: ' + n);
        }
        return Math.sqrt(n);
    }

    /**
     * @description Returns four times the given integer (4 × n).
     * @param n The integer to quadruple. Must not be null.
     * @return 4 × n as an Integer.
     */
    public static Integer quadruple(Integer n) {
        validateNotNull(n, 'n');
        return n * 4;
    }
    public static Integer pentruple(Integer n) {
        validateNotNull(n, 'n');
        return n * 5;
    }

    // Centralises null checks so each method stays readable.
    private static void validateNotNull(Integer value, String paramName) {
        if (value == null) {
            throw new MathUtilityException('Parameter \'' + paramName + '\' cannot be null');
        }
    }
}
