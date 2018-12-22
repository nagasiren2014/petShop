package app.entity;

import javax.persistence.*;

@Entity
public class Branch {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String idbranch;
    @Column
    private String branchname;
    private String address;
    private String city;

    public String getIdbranch() {
        return idbranch;
    }

    public void setIdbranch(String idbranch) {
        this.idbranch = idbranch;
    }

    public String getBranchname() {
        return branchname;
    }

    public void setBranchname(String branchname) {
        this.branchname = branchname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Branch(String branchname, String address, String city) {
        this.branchname = branchname;
        this.address = address;
        this.city = city;
    }
    public Branch(String idbranch, String branchname, String address, String city) {
        this.idbranch = idbranch;
        this.branchname = branchname;
        this.address = address;
        this.city = city;
    }

    public Branch() {
    }
}
