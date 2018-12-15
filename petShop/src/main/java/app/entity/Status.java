package app.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Status {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String idstatus;
    private String statusname;

    public Status() {
    }

    public String getIdstatus() {
        return idstatus;
    }

    public void setIdstatus(String idstatus) {
        this.idstatus = idstatus;
    }

    public String getStatusname() {
        return statusname;
    }

    public void setStatusname(String statusname) {
        this.statusname = statusname;
    }

    public Status(String statusname) {
        this.statusname = statusname;
    }
}
