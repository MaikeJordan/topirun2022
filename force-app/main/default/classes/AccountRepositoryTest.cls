/**
 * @author Maike
 */
@isTest
public class AccountRepositoryTest {

    @isTest
    public static void givenValidAccountWhenSaveThenReturnAccountWithId () {

        AccountRepository repository = new AccountRepository();
        
        Test.startTest();

        List<Account> accounts = repository.save( new List<Account> { AccountFixtureFactory.newAccount() } );

        Test.stopTest();
        
        System.assert(accounts != null);
        System.assert(!accounts.isEmpty());
        System.assertEquals( 1 , accounts.size());
        
        System.assert( accounts.get(0).Id != null );
        

    }

}

