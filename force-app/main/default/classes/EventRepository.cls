/**
 * @author Maike
 */
public virtual class EventRepository extends AbstractRepository{
   
    virtual
    public List<Event> save( List<Event> events ) {
        insert events;
        return events;
    }

}