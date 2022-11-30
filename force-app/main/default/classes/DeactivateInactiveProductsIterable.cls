public with sharing class DeactivateInactiveProductsIterable implements Database.Batchable<SObject>,Database.Stateful{

    List<Product2> productList;
    Integer recordsProcessed;

    public DeactivateInactiveProductsIterable(List<Product2> productList) {
        // Assign the value coming from the constructor to the global value
        this.productList = productList;
        this.recordsProcessed = 0;
    }

    public Iterable<SObject> start(Database.BatchableContext bc){
        // collect the batches of records or objects to be passed to execute
        return this.productList;
    }

    public void execute(Database.BatchableContext bc, List<Product2> scope){
        // process each batch of records
        for(Product2 prod : scope) {
            prod.IsActive = false;
            this.recordsProcessed++;
        }

        update scope;
    }

    public void finish(Database.BatchableContext bc){
        // execute any post-processing operations
        System.debug('Batch has finished and the number of processed records are ' + this.recordsProcessed);
    }
}
