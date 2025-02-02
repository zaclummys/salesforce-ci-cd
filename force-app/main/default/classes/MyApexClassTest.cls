@IsTest
public class MyApexClassTest {
    @IsTest
    public static void willFail () {
        System.assertEquals(1, 2);
    }
}