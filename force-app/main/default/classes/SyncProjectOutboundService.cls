/**
 * @author Maike
 */
public class SyncProjectOutboundService {
   
    private static final String ENDPOINT_URL = 'https://run.mocky.io/v3/58d750c1-31bf-45ae-b361-bedecacf55a2';

    ProjectTransformer transformer;
       
    public SyncProjectOutboundService() {
        transformer = new ProjectTransformer();        
    }

    public Project__c sendProject(Project__c project) {
        
        Http http = new Http();
        HttpResponse response = http.send(buildRequest(project));

        if (response.getStatusCode() != 200) {
            
            ProjectErrorResponse errorResponse = (ProjectErrorResponse) JSON.deserialize(response.getBody(), ProjectErrorResponse.class);
            project = transformer.toProject(project, errorResponse);
            
        }

        ProjectResponse projectResponse = (ProjectResponse) JSON.deserialize(response.getBody(), ProjectResponse.class);
        project = transformer.toProject(project, projectResponse);

        return project;

    }

    private HttpRequest buildRequest (Project__c project){

        HttpRequest request = new HttpRequest();
        request.setEndpoint(ENDPOINT_URL);
        request.setMethod('PUT');
        request.setHeader('Content-Type', 'application/json; charset=UTF-8');
        
        ProjectRequest projectRequest = transformer.toProject( project );
        
        String payload = JSON.serialize(projectRequest);
        
        request.setBody( payload );

        return request;
    }

}