package app.entity;

import javax.persistence.*;

@Entity

public class Customers {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String idcustomer;

    @Column
    private String customername;
    private String customeraddress;
    private String customerphone;

    public Customers() {
    }

    public Customers(String customername, String customeraddress, String customerphone) {
        this.customername = customername;
        this.customeraddress = customeraddress;
        this.customerphone = customerphone;
    }
    public Customers(String idcustomer, String customername, String customeraddress, String customerphone) {
        this.idcustomer = idcustomer;
        this.customername = customername;
        this.customeraddress = customeraddress;
        this.customerphone = customerphone;
    }

    public String getIdcustomer() {
        return idcustomer;
    }

    public void setIdcustomer(String idcustomer) {
        this.idcustomer = idcustomer;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

    public String getCustomeraddress() {
        return customeraddress;
    }

    public void setCustomeraddress(String customeraddress) {
        this.customeraddress = customeraddress;
    }

    public String getCustomerphone() {
        return customerphone;
    }

    public void setCustomerphone(String customerphone) {
        this.customerphone = customerphone;
    }
}
