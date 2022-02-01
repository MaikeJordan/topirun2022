/**
 * @author Maike
 */
public with sharing class ProjectFilter {
   
    public List<Project__c> filterByEnterpriseProjectStarted(List<Project__c> newProjects, Map<Id,Project__c> oldProjects){

        List<Project__c>  filteredProjects = new List<Project__c>();

        if ( newProjects.isEmpty() ) return filteredProjects;
        
        for ( Project__c project : newProjects ) {
            
            if (Project.Type__c != 'Enterprise' || project.Status__c != 'Iniciado') 
                continue;

            if ( oldProjects == null || oldProjects.isEmpty() ){
                filteredProjects.add(project);
                continue;
            }
        
            Project__c oldProject = oldProjects.get(project.Id);

            if (oldProject.Status__c == project.Status__c)
                continue;

            filteredProjects.add(project);
        }
        return filteredProjects;
    }
    
}
