@IsTest
private class DevOpsCentreDemoControllerTest {
    @IsTest
    static void getDemoSummaryReturnsExpectedValues() {
        Test.startTest();
        DevOpsCentreDemoController.DemoSummary summary = DevOpsCentreDemoController.getDemoSummary();
        Test.stopTest();

        System.assertEquals('Salesforce DevOps Center Demo', summary.title);
        System.assertEquals('Ready for deployment testing', summary.status);
        System.assertNotEquals(null, summary.generatedAt);
    }

    @IsTest
    static void addNumbersHandlesValuesAndNulls() {
        System.assertEquals(12, DevOpsCentreDemoController.addNumbers(5, 7));
        System.assertEquals(4, DevOpsCentreDemoController.addNumbers(null, 4));
        System.assertEquals(0, DevOpsCentreDemoController.addNumbers(null, null));
    }
}