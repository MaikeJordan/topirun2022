/**
 * @author Maike
 */
public with sharing class ProjectTH extends TriggerHandler {
    
    public List<Project__c> newProjects;
    public Map<Id, Project__c> oldProjects;

    ProjectFilter projectFilter;

    public ProjectTH(List<Project__c> newProjects, Map<Id, Project__c> oldProjects){

        this.newProjects = newProjects;
        this.oldProjects = oldProjects;
        this.projectFilter = new ProjectFilter();
        
    }

    public ProjectTH() {
        this ((List<Project__c>) Trigger.new, (Map<Id, Project__c>) Trigger.oldMap);
    }

    override
    public void beforeInsert() {

    }

    override
    public void beforeUpdate() {

    }

    override
    public void afterInsert() {

    }

    override
    public void afterUpdate() {
        sendProject();

    }

    public void sendProject(){

        List<Project__c> projects = this.projectFilter.filterByEnterpriseProjectStarted(newProjects, oldProjects);
        
        ProjectPublisher publish = new ProjectPublisher();

        if(projects.size() > 0) publish.publish(projects);

    }

}
