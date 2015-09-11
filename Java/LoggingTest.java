import java.io.*;
import java.util.logging.*;

public class LoggingTest {
    private final static Logger testLogger = Logger.getLogger("test");
    
    public static void main(String[] args) {
         testLogger.log(Level.INFO, "started");
         testLogger.log(Level.SEVERE, "continued");
         testLogger.log(Level.INFO, "ended");
         tst();
    }

    public static void tst() {
        testLogger.log(Level.INFO, "started");
        testLogger.log(Level.SEVERE, "continued");
        testLogger.log(Level.INFO, "ended");
    }
}

class TestClass {
    private final static Logger testClassLogger = Logger.getLogger("TestClass");

    public static void test() {
        testClassLogger.log(Level.INFO, "TestClass::test started");
        testClassLogger.log(Level.SEVERE, "TestClass::test continued");
        testClassLogger.log(Level.INFO, "TestClass::test ended");
    }
 
}
