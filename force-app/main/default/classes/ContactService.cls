public with sharing class ContactService {
    public static Contact getContact () {
        return [SELECT Id FROM Contact LIMIT 1];
    }
}