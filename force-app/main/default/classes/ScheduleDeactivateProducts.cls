public with sharing class ScheduleDeactivateProducts implements Schedulable{
    public void execute(SchedulableContext ctx) {

        // Instantiating the batch class and executing it
        DeactivateInactiveProducts myBatch = new DeactivateInactiveProducts();
        Database.executeBatch(myBatch);
    }
}