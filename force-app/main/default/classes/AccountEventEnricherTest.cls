/**
 * @author Maike
 */
@isTest
public with sharing class AccountEventEnricherTest {
    
    @isTest
    static void createEventForPremiumAccountTest() {

        List<Account> accounts = new List<Account>();

        Account account = AccountFixtureFactory.createAccount( 'Maike', 'PREMIUM', 1000000 );
        Account account2 = AccountFixtureFactory.createAccount( 'Maikeras','PREMIUM', 10000000 );
        accounts.add( account );
        accounts.add( account2 );
        EventEnricher event = new EventEnricher();

        List<Event> events = event.withForPremiumAccount( accounts );

        System.assertEquals( accounts.size(), events.size() );
    }

}
