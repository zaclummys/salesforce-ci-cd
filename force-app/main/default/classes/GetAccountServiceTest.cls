@IsTest
public class GetAccountServiceTest {
    @IsTest
    public static void testGetAccount() {
        Account testAccount = new Account(
            Name = 'Test Account'
        );

        insert testAccount;

        Account result = GetAccountService.getAccount(testAccount.Id);

        System.assertNotEquals(null, result, 'The account should not be null');
        System.assertEquals(testAccount.Id, result.Id, 'The returned account ID should match the test account ID');
    }
}