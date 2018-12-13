package app.repository;

import app.entity.Kind;
import org.springframework.data.repository.CrudRepository;

public interface KindRepository extends CrudRepository<Kind, String> {
}
