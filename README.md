# Batch class

Enter the following code inside of an execute anonymous in order to execute a batch.
The syntax will return the Id of the AsyncApexJob that was created
```apex
MyBatchClass myBatch = new MyBatchClass();
Id batchId = Database.executeBatch(myBatch);
```

By default the Batch class iterates over 200 records at a time, you can specify how many records to iterate over using the following syntax (In this example 100 records at a time)
```apex
Id batchId = Database.executeBatch(myBatch, 100);
```

The query used in order to fetch the AsyncApexJob created upon executing the batch class.
```apex
AsyncApexJob job = [SELECT Id, Status, JobItemsProcessed, TotalJobItems, NumberOfErrors FROM AsyncApexJob WHERE ID = :batchId ];
```


# Schedulable class

## Excuting the schedulable

An example of the syntax used in order to execute a schedulable class inside of an execute anonymous.
```apex
MyScheduable sched = new MyScheduable();
String cronExp = '0 0 0 1/1 * ? *';
String jobID = System.schedule('Scheduled Job', cronExp, sched);
```

After executing the Expression you can enter 'Scheduled Jobs' inside the Setup and see the name of the job as well as its next scheduled run.


## Cron Expression

The Cron Expression is used as the second parameter of the System.schedule method and is used in order to specify the time when the schedule will run
```apex
String cronExp = '0 0 0 1/1 * ? *';
```

The numbers in the string are as follows :Seconds Minutes Hours Day_of_month Month Day_of_week optional_year

You can generate a cron expression according to your needs from the following [website](http://www.cronmaker.com/)