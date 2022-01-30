/**
 * @author Maike
 */
public virtual class EventEnricher {

    public List<Event> withForPremiumAccount ( List<Account> premiumAccounts ) {
        
        List<Event> events = new List<Event>();
        
        for( Account account : premiumAccounts ){
            
            Event event = new Event();
            
            Datetime beginDate = Datetime.now().addDays(1);
            
            event.Description = 'Apresentar o portifolio de Produtos para o novo cliente com enfoque em nossa carteira Premium';
            event.Subject = 'Apresentacao instucional dos produtos Premium';
            event.StartDateTime = beginDate;
            event.EndDateTime = beginDate.addHours(1);
            event.WhatId = account.Id;
            events.add(event);
        }
        return events;
    }
}