public with sharing class Invoice {
    private Decimal invoiceNumberValue;
    public Decimal invoiceNumber {
        get {
            return invoiceNumberValue == null ? 0 : invoiceNumberValue;
        }
        set {
            Decimal v = (value == null || value < 0) ? 0 : value;
            invoiceNumberValue = v.setScale(2);
        }
    }
    public Date invoiceDate{ get; set; }
    public Decimal invoiceAmount{ get; set; }
    public Invoice(Decimal invoiceNumber, Date invoiceDate, Decimal invoiceAmount) {
        this.invoiceNumber = invoiceNumber;
        this.invoiceDate = invoiceDate;
        this.invoiceAmount = invoiceAmount;
    }
    public void printInvoice() {
        System.debug('Invoice number: ' + invoiceNumber);
        System.debug('Invoice date: ' + invoiceDate);
        System.debug('Invoice amount: ' + invoiceAmount);
    }
}