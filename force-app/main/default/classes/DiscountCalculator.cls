public with sharing class DiscountCalculator {
    public String customerName;
    public String tier;
    public Decimal originalPrice;
    public DiscountCalculator(String customerName, String tier, Decimal originalPrice) {
        this.customerName = customerName;
        this.tier = tier;
        this.originalPrice = originalPrice;
    }
    public Decimal getDiscountRate() {
        if (tier == 'Gold') {
            return 0.2;
        } else if (tier == 'Silver') {
            return 0.1;
        } else {
            return 0.05;
        }
    }
    public Decimal getFinalPrice() {
        return originalPrice - (originalPrice * getDiscountRate());
    }
    public void printDiscountInfo() {
        System.debug('Customer name: ' + customerName);
        System.debug('Tier: ' + tier);
        System.debug('Original price: ' + originalPrice);
        System.debug('Discount percentage: ' + Integer.valueOf(getDiscountRate() * 100) + '%');
        System.debug('Final price: ' + getFinalPrice() + ' USD');
    }
}