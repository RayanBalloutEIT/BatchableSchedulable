public class MyScheduable implements Schedulable{
    public void execute(SchedulableContext ctx) {
        // do code here
    }

    // In order to schedule the schedulable
    public static void scheduleMe(){
        MyScheduable sched = new MyScheduable();
        String cronExp = 'CRON EXPRESSION';
        String jobID = System.schedule('Scheduled Job', cronExp, sched);
    }
}