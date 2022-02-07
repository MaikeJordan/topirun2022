/**
 * @author Maike
 */
public class ProjectRequest {

    public String name;
    public String code;
    public String status;
    public Date startDate;
    public Date endDate;
    public Double budget;

    public ProjectRequest() {
        this.budget = 10000000;
    }

    override
    public String toString() {
        return JSON.serialize(this);
    }
    
}
