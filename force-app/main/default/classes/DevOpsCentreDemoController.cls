public with sharing class DevOpsCentreDemoController {
    @AuraEnabled(cacheable=true)
    public static DemoSummary getDemoSummary() {
        DemoSummary summary = new DemoSummary();
        summary.title = 'Salesforce DevOps Center Demo';
        summary.status = 'Ready for deployment testing';
        summary.generatedAt = Datetime.now();
        System.debug('New Changes');
        return summary;
    }


    public class DemoSummary {
        @AuraEnabled public String title { get; set; }
        @AuraEnabled public String status { get; set; }
        @AuraEnabled public Datetime generatedAt { get; set; }
    }
    
    public static void mymethod1(){
        System.debug('Second Change');
    }
}