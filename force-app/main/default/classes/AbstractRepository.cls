/**
 * @author Maike
 */
public abstract class AbstractRepository {

    virtual
    public List<SObject> save (List<SObject> records) {
        upsert records;
        return records;
    }

    virtual
    public void remove (List<SObject> records) {
        delete records;        
    }

}
