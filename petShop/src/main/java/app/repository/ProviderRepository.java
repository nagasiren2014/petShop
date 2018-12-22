package app.repository;

import app.entity.Providers;
import org.springframework.data.repository.CrudRepository;

public interface ProviderRepository extends CrudRepository<Providers, String> {
}
