public with sharing class DevOpsCentreDemoController {
    @AuraEnabled(cacheable=true)
    public static DemoSummary getDemoSummary() {
        DemoSummary summary = new DemoSummary();
        summary.title = 'Salesforce DevOps Center Demo';
        summary.status = 'Ready for deployment testing';
        summary.generatedAt = Datetime.now();
        return summary;
    }

    @AuraEnabled(cacheable=true)
    public static Integer addNumbers(Integer firstNumber, Integer secondNumber) {
        Integer safeFirstNumber = firstNumber == null ? 0 : firstNumber;
        Integer safeSecondNumber = secondNumber == null ? 0 : secondNumber;
        return safeFirstNumber + safeSecondNumber;
    }

    public class DemoSummary {
        @AuraEnabled public String title { get; set; }
        @AuraEnabled public String status { get; set; }
        @AuraEnabled public Datetime generatedAt { get; set; }
    }
}