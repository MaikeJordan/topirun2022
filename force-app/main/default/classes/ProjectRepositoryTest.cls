/**
 * @author Maike
 */
@isTest
public class ProjectRepositoryTest {
    
    @isTest
    public static void givenValidProjectWhenCreateThenReturnProjectWithId () {

        Date startDate = Date.newInstance(2022, 1, 1);
        Date endDate = Date.newInstance(2022, 2, 1);

        Project__c project =  ProjectFixtureFactory.newProject('Topirun2022', startDate, endDate);
    
        // when
        ProjectRepository repository = new ProjectRepository();
        Project__c storedProject = repository.create(project);
    
        // then              
        System.assert( storedProject.Id != null );

    }

    @isTest
    public static void makeData(){
        
    }


}