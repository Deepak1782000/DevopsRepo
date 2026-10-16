import { LightningElement, wire } from 'lwc';
import getDemoSummary from '@salesforce/apex/DevOpsCentreDemoController.getDemoSummary';
import addNumbers from '@salesforce/apex/DevOpsCentreDemoController.addNumbers';

export default class DevOpsCentreDemo extends LightningElement {
    @wire(getDemoSummary)
    summary;

    @wire(addNumbers, { firstNumber: 10, secondNumber: 5 })
    calculation;
}