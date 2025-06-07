public class GetAccountService {
  public static Account getAccount() {
    return [SELECT Id FROM Account LIMIT 1];
  }
}
