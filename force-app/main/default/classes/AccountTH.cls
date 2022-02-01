/**
 * @author Maike
 */
public virtual class AccountTH extends TriggerHandler {

    List<Account> newAccounts;
    Map<Id, Account> oldAccounts;

    AccountFilter filter;
    AccountEventEnricher enricher;
    AccountEventRepository accountEventRepository;

    public AccountTH() {
        this( (List<Account>) Trigger.new, (Map<Id,Account>) Trigger.oldMap );
    }

    public AccountTH( List<Account> newAccounts , Map<Id,Account> oldAccounts ){
        this.newAccounts = newAccounts;
        this.oldAccounts = oldAccounts;
        
        this.filter = new AccountFilter();
        this.enricher = new AccountEventEnricher();
        this.accountEventRepository = new AccountEventRepository();
    }

    override
    public void afterInsert() {
        createEventForPremiumAccount();
    }

    override
    public void afterUpdate() {

    }

    override
    public void beforeInsert() {

    }

    override
    public void beforeUpdate() {

    }

    virtual
    public void createEventForPremiumAccount() {
                
        List<Account> filterAccounts = this.filter.filterByCategory(newAccounts);
        
        filterAccounts = this.filter.filterByAnnualRevenue(filterAccounts);

        List<Event> events = this.enricher.withForPremiumAccount(filterAccounts);
    
        this.accountEventRepository.save( events );

    }

}
