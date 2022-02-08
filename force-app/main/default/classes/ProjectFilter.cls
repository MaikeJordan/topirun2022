/**
 * @author Maike
 */
public class ProjectFilter {
   
    public List<Project__c> filterByEnterpriseProjectStarted(List<Project__c> newProjects, Map<Id,Project__c> oldProjects){

        List<Project__c>  filteredProjects = new List<Project__c>();

        if ( newProjects.isEmpty() ) return filteredProjects;
        
        for ( Project__c project : newProjects ) {
            
            Project__c oldProject = oldProjects.get(project.Id);

            if ( oldProjects == null || oldProjects.isEmpty() ){
                filteredProjects.add(project);
                continue;
            }

            if (Project.Type__c == 'Enterprise' && project.Status__c == 'Iniciado' && project.Status__c != oldProject.Status__c)
                filteredProjects.add(project);
                
        }

        return filteredProjects;
    }
    
}
