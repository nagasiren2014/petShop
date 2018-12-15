package app.entity;

import javax.persistence.*;

@Entity
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String idemployee;

    @Column
    private String firstname;
    private String lastname;
    private String gender;
    private String dayin;
    private String address;
    private String idbranch;
    private String phone;
    private String idstatus;
    private String idjob;
    private String birthday;
    private String employeeage;

    public String getIdemployee() {
        return idemployee;
    }

    public void setIdemployee(String idemployee) {
        this.idemployee = idemployee;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDayin() {
        return dayin;
    }

    public void setDayin(String dayin) {
        this.dayin = dayin;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIdbranch() {
        return idbranch;
    }

    public void setIdbranch(String idbranch) {
        this.idbranch = idbranch;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIdstatus() {
        return idstatus;
    }

    public void setIdstatus(String idstatus) {
        this.idstatus = idstatus;
    }

    public String getIdjob() {
        return idjob;
    }

    public void setIdjob(String idjob) {
        this.idjob = idjob;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getEmployeeage() {
        return employeeage;
    }

    public void setEmployeeage(String employeeage) {
        this.employeeage = employeeage;
    }

    public Employee(String firstname, String lastname, String gender, String dayin, String address, String idbranch, String phone, String idstatus, String idjob, String birthday, String employeeage) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.gender = gender;
        this.dayin = dayin;
        this.address = address;
        this.idbranch = idbranch;
        this.phone = phone;
        this.idstatus = idstatus;
        this.idjob = idjob;
        this.birthday = birthday;
        this.employeeage = employeeage;
    }

    public Employee(String idemployee,String firstname, String lastname, String gender, String dayin, String address, String idbranch, String phone, String idstatus, String idjob, String birthday, String employeeage) {
        this.idemployee = idemployee;
        this.firstname = firstname;
        this.lastname = lastname;
        this.gender = gender;
        this.dayin = dayin;
        this.address = address;
        this.idbranch = idbranch;
        this.phone = phone;
        this.idstatus = idstatus;
        this.idjob = idjob;
        this.birthday = birthday;
        this.employeeage = employeeage;
    }

    public Employee() {
    }
}
