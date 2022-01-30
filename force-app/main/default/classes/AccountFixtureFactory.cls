/**
 * @author Maike
 */
@isTest
public class AccountFixtureFactory {

    public static Account createAccount (String name) {
        return createAccount ( newAccount(name));
    }

    public static Account newAccount () {
        return newAccount('Maike', 'Premium', 1000000);
    }

    public static Account newAccount( String Name, String category, Decimal annualRevenue ){
        return new Account( Name = name, Category__c = category, AnnualRevenue = annualRevenue );
    }

    public static Account createAccount( String Name, String category, Decimal annualRevenue ) {

        return  createAccount( newAccount(name, category, annualRevenue ) );

    }

    public static Account newAccount (String name) {
        return new Account(Name = name);
    } 

    public static Account createAccount(Account account ) {
        insert account;
        return account;
    }

}
