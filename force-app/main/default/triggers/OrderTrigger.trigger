trigger OrderTrigger on HandsMen_Order__c (before insert) {
    if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {

        OrderTriggerHandler.validateOrderQuantity(Trigger.new);

    }
}