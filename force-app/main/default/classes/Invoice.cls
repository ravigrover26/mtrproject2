public with sharing class Invoice {
    private Integer invoiceNumberValue;
    public Integer invoiceNumber {
        get {
            return invoiceNumberValue == null ? 0 : invoiceNumberValue;
        }
        set {
            invoiceNumberValue = (value < 0) ? 0 : value;
        }
    }
    public Date invoiceDate{ get; set; }
    public Decimal invoiceAmount{ get; set; }
    public Invoice(Integer invoiceNumber, Date invoiceDate, Decimal invoiceAmount) {
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