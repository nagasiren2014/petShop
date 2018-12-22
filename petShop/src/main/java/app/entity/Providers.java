package app.entity;


import javax.persistence.*;

@Entity
public class Providers {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String idprovider;
    @Column
    private String providername;
    private String provideraddress;
    private String providerphone;

    public Providers() {
    }

    public Providers(String idprovider, String providername, String provideraddress, String providerphone) {
        this.idprovider = idprovider;
        this.providername = providername;
        this.provideraddress = provideraddress;
        this.providerphone = providerphone;
    }

    public Providers(String providername, String provideraddress, String providerphone) {
        this.providername = providername;
        this.provideraddress = provideraddress;
        this.providerphone = providerphone;
    }

    public String getIdprovider() {
        return idprovider;
    }

    public void setIdprovider(String idprovider) {
        this.idprovider = idprovider;
    }

    public String getProvidername() {
        return providername;
    }

    public void setProvidername(String providername) {
        this.providername = providername;
    }

    public String getProvideraddress() {
        return provideraddress;
    }

    public void setProvideraddress(String provideraddress) {
        this.provideraddress = provideraddress;
    }

    public String getProviderphone() {
        return providerphone;
    }

    public void setProviderphone(String providerphone) {
        this.providerphone = providerphone;
    }
}

