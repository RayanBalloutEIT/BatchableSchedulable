public with sharing class DeactivateInactiveProducts implements Database.Batchable<SObject>{
    public Database.QueryLocator start(Database.BatchableContext bc) {

        // collect the batches of records or objects to be passed to execute
        return DataBase.getQueryLocator('SELECT IsActive FROM Product2 WHERE LastModifiedDate < YESTERDAY');

    }
    public void execute(Database.BatchableContext bc, List<Product2> records){

        // process each batch of records
        for(Product2 prod : records) {
            prod.IsActive = false;
        }

        update records;
    }
    public void finish(Database.BatchableContext bc){

        // execute any post-processing operations
        System.debug('Batch has finished');
    }
}
