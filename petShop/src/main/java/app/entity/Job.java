package app.entity;

import javax.persistence.*;

@Entity
public class Job {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String idjob;
    @Column
    private String jobname;
    private String salaryperhour;

    public Job(String jobname, String salaryperhour) {
        this.jobname = jobname;
        this.salaryperhour = salaryperhour;
    }

    public String getIdjob() {
        return idjob;
    }

    public void setIdjob(String idjob) {
        this.idjob = idjob;
    }

    public String getJobname() {
        return jobname;
    }

    public void setJobname(String jobname) {
        this.jobname = jobname;
    }

    public String getSalaryperhour() {
        return salaryperhour;
    }

    public void setSalaryperhour(String salaryperhour) {
        this.salaryperhour = salaryperhour;
    }

    public Job() {
    }
}
