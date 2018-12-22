package app.entity;


import javax.persistence.*;

@Entity

public class Boss {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    String idboss;

    @Column
    private String bosskind;
    private String bossname;
    private String gender;
    private String bossage;
    private String bosscharacter;
    private String vaccine;
    private String registered;
    private String price;
    private String idprovider;

    public Boss() {
    }

    public String getIdboss() {
        return idboss;
    }

    public void setIdboss(String idboss) {
        this.idboss = idboss;
    }

    public String getBosskind() {
        return bosskind;
    }

    public void setBosskind(String bosskind) {
        this.bosskind = bosskind;
    }

    public String getBossname() {
        return bossname;
    }

    public void setBossname(String bossname) {
        this.bossname = bossname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBossage() {
        return bossage;
    }

    public void setBossage(String bossage) {
        this.bossage = bossage;
    }

    public String getBosscharacter() {
        return bosscharacter;
    }

    public void setBosscharacter(String bosscharacter) {
        this.bosscharacter = bosscharacter;
    }

    public String getVaccine() {
        return vaccine;
    }

    public void setVaccine(String vaccine) {
        this.vaccine = vaccine;
    }

    public String getRegistered() {
        return registered;
    }

    public void setRegistered(String registered) {
        this.registered = registered;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getIdprovider() {
        return idprovider;
    }

    public void setIdprovider(String idprovider) {
        this.idprovider = idprovider;
    }

    public Boss(String bosskind, String bossname, String gender, String bossage, String bosscharacter, String vaccine, String registered, String price, String idprovider) {
        this.bosskind = bosskind;
        this.bossname = bossname;
        this.gender = gender;
        this.bossage = bossage;
        this.bosscharacter = bosscharacter;
        this.vaccine = vaccine;
        this.registered = registered;
        this.price = price;
        this.idprovider = idprovider;
    }
    public Boss(String idboss, String bosskind, String bossname, String gender, String bossage, String bosscharacter, String vaccine, String registered, String price, String idprovider) {
        this.idboss = idboss;
        this.bosskind = bosskind;
        this.bossname = bossname;
        this.gender = gender;
        this.bossage = bossage;
        this.bosscharacter = bosscharacter;
        this.vaccine = vaccine;
        this.registered = registered;
        this.price = price;
        this.idprovider = idprovider;
    }
}