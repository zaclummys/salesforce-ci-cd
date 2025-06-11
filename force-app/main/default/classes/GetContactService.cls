public class GetContactService {
    public static Contact getContact () {
        return [SELECT Id FROM Contact LIMIT 1];
    }
}