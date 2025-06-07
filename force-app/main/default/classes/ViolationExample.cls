public class ViolationExample {
    public static void doSomething() {
        if (true) {
            if (true) {
                if (true) {
                    if (true) {
                        if (true) {
                            System.debug('Too deep!');
                        }
                    }
                }
            }
        }

        try {
            // Some operation
        } catch (Exception e) {
            // empty catch block - bad!
        }

        Id hardcodedId = '0051r000009I9XDAA0'; // hardcoded Salesforce ID
        System.debug('Hardcoded ID: ' + hardcodedId);
    }
}
