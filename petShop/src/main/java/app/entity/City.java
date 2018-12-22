package app.entity;

import javax.persistence.*;

@Entity
public class City {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String idcity;
    @Column
    private String cityname;

    public City(String cityname) {
        this.cityname = cityname;
    }
    public City(String idcity, String cityname) {
        this.idcity = idcity;
        this.cityname = cityname;
    }

    public String getIdcity() {
        return idcity;
    }

    public void setIdcity(String idcity) {
        this.idcity = idcity;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public City() {
    }
}
