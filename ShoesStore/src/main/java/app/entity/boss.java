package app.entity;


import javax.persistence.Entity;
import javax.persistence.Id;

@Entity

public class boss {

    @Id
    int idboss;

    private String type;
    private String name;
    private String gender;
    private String age;
    private String vaccine;
    private String registered;
    private String price;
    private String character;
    public boss() {
    }

    public boss(int idboss, String type, String name, String gender, String age, String character, String vaccine, String registered, String price) {
        this.idboss = idboss;
        this.type = type;
        this.name = name;
        this.gender = gender;
        this.age = age;
        this.character = character;
        this.vaccine = vaccine;
        this.registered = registered;
        this.price = price;
    }



    public int getIdboss() {
        return idboss;
    }

    public void setIdboss(int idboss) {
        this.idboss = idboss;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getCharacter() {
        return character;
    }

    public void setCharacter(String character) {
        this.character = character;
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




}
