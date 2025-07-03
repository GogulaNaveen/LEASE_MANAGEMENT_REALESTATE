trigger LeaseStatusUpdater on Lease__c (before insert, before update) {
    for (Lease__c lease : Trigger.new) {
        if (lease.End_Date__c < System.today()) {
            lease.Status__c = 'Expired';
        }
    }
}