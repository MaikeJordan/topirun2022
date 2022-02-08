/**
 * @author Maike
 */
public class ProjectPublisher {
    
    public static SyncProjectOutboundService service;

    static{
        service = new SyncProjectOutboundService();
    }

    public ProjectPublisher() {

    }

    public void publish (List<Project__c> projects){

        for(Project__c project : projects){
            ProjectPublisher.publish(project.Id);
        }

    }

    @future(callout = true)
    public static void publish (Id projectId) {
        service.sendProject(projectId); 
        
    }
}
