/**
 * @author Maike
 */
@RestResource(urlMapping = '/api/project')
global with sharing class ProjectCtrl {

    public static ProjectRepository projectRepository;
    public static ProjectTransformer projectTransformer;

    static {
        projectRepository = new ProjectRepository();
        projectTransformer = new ProjectTransformer();
    }

    @HttpPost
    global static Project__c show (){

        RestRequest request = RestContext.request;

        String projectId = request.params.get('id');

        return projectRepository.findById(projectId);
    
    }

}