public class MyBatchClass implements Database.Batchable<SObject> {
    public Database.QueryLocator start(Database.BatchableContext bc) {

        // collect the batches of records or objects to be passed to execute
        return DataBase.getQueryLocator('QUERY GOES HERE');

    }
    public void execute(Database.BatchableContext bc, List<SObject> records){

        // process each batch of records

    }
    public void finish(Database.BatchableContext bc){

        // execute any post-processing operations

    }
}