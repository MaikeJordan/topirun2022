/**
 * @author Maike
 */
public virtual class ProjectRepository extends AbstractRepository {
   
    virtual
    public List<Project__c> findByIds( List<String> ids ) {
        return [SELECT Id, Name, StartDate__c,EndDate__c, Budget__c
                        , ProjectName__c, ExternalId__c, Status__c
                        , LastSyncDate__c, SynchronizationStatus__c
                        , ErrorMessage__c  
                FROM Project__c 
                WHERE Id in : ids];
    }

    virtual
    public Project__c findById( String id ){
        List<Project__c> projects = findByIds ( new List<String> {id} );
        
        return projects.isEmpty() ? null : projects.get(0);
    }

    virtual
    public List<Project__c> findByProjectName(String name){
        return [SELECT Id, ProjectName__c
                FROM Project__c
                WHERE ProjectName__c = : name];
    }

    virtual
    public Project__c create(Project__c project){
        save (new List<Project__c> {project});
        return project;
    }
    
}
