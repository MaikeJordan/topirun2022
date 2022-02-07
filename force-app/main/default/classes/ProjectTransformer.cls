/**
 * @author Maike
 */
public class ProjectTransformer {

    public ProjectRequest toProject(Project__c project){
        
        ProjectRequest request = new ProjectRequest();

        request.name = project.ProjectName__c;
        request.code = project.Id;
        request.status = project.Status__c;
        request.startDate = project.StartDate__c;
        request.endDate = project.EndDate__c;
        request.budget = project.Budget__c;

        return request;
    }

    public Project__c toProject( Project__c project, ProjectResponse response ) {
        
        project.LastSyncDate__c = datetime.now();
        project.SynchronizationStatus__c = 'Integrado com sucesso';
        
        return project;
    }

    public Project__c toProject( Project__c project, ProjectErrorResponse response ) {
        
        project.LastSyncDate__c = datetime.now();
        project.SynchronizationStatus__c = 'Erro na sincronização de projetos';
        project.ErrorMessage__c = response.message;
        return project;
    }
    

}
