public with sharing class ScheduleDeactivateProducts implements Schedulable{
    public void execute(SchedulableContext ctx) {

        // Instantiating the batch class and executing it
        DeactivateInactiveProducts myBatch = new DeactivateInactiveProducts();
        Database.executeBatch(myBatch);
    }

    public static void scheduleMe(){
        ScheduleDeactivateProducts sched = new ScheduleDeactivateProducts();
        String cronExp = '0 0 0 1/1 * ? *';
        String jobID = System.schedule('Scheduled Job', cronExp, sched);
    }
}