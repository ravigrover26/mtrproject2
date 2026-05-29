public with sharing class Product {
    public String name;
    public Double price;
    public Integer stock;
    public Product() {
        System.debug('Product class constructor');
    }
    public Product(String name, Double price, Integer stock) {
        this.name = name;
        this.price = price;
        this.stock = stock;
    }
    public void printInfo() {
        System.debug('Product name: ' + name);
        System.debug('Product price: ' + price);
        System.debug('Product stock: ' + stock);
    }
}