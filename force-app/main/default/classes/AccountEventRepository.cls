/**
 * @author Maike
 */
public virtual class AccountEventRepository extends AbstractRepository{
   
    virtual
    public List<Event> save( List<Event> events ) {
        insert events;
        return events;
    }

}