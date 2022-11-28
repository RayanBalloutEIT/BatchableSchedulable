public with sharing class MyIterableBatchClass implements Database.Batchable<SObject>,Database.Stateful{

    List<SObject> SObjectList;

    public MyIterableBatchClass(List<SObject> SObjectList) {
        // Assign the value coming from the constructor to the global value
        this.SObjectList = SObjectList;
    }

    public Iterable<SObject> start(Database.BatchableContext bc){
        // collect the batches of records or objects to be passed to execute
        return this.SObjectList;
    }

    public void execute(Database.BatchableContext bc, List<SObject> scope){
        // process each batch of records
    }

    public void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }
}
