package app.repository;
import app.entity.boss;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface BossRepository extends CrudRepository<boss, String> {



}



