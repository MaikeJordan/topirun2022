/**
 * @author Maike
 */
trigger Project on Project__c (before insert, before update, after insert, after update) {

    new ProjectTH().run();

}