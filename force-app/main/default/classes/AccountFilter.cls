/**
 * @author Maike
 */
public class AccountFilter {
    
    public List<Account> filterByCategory ( List<Account> newAccounts ) {

        List<Account> filteredAccounts = new List<Account>();

        for ( Account account : newAccounts ){
                
            if( account.category__c == 'PREMIUM' ) {
                filteredAccounts.add( account );
                continue;
            }
        }
        
        return filteredAccounts;
    }

    public List<Account> filterByAnnualRevenue ( List<Account> newAccounts ) {
        
        List<Account> filteredAccounts = new List<Account>();

        for (Account account : newAccounts ) {
                
            if( account.AnnualRevenue >= 1000000 ) {
                filteredAccounts.add( account );
                continue;
            }
        }
        
        return filteredAccounts;
    }

}
