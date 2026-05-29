public with sharing class Address {
    public String street;
    public String city;
    public String country;
    public Address(String city,String country) {
        this.street = 'Unknown';
        this.city = city;
        this.country = country;
    }
    public Address(String street, String city, String country) {
        this.street = street;
        this.city = city;
        this.country = country;
    }
    public void printFullAddress() {
        System.debug('Street: ' + street + ' City: ' + city + ' Country: ' + country);
        
    }
}