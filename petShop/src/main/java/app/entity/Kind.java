package app.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Kind {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    String idkind;

    String name;

    public Kind() {
    }

    public String getIdkind() {
        return idkind;
    }

    public void setIdkind(String idkind) {
        this.idkind = idkind;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Kind(String name) {
        this.name = name;
    }
    public Kind(String idkind ,String name) {
        this.idkind = idkind;
        this.name = name;
    }
}
