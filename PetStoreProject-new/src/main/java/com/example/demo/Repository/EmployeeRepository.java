package com.example.demo.Repository;

import java.util.Date;
import java.util.List;

import com.example.demo.entity.Employee;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

// This is an Interface.
// No need Annotation here.
public interface EmployeeRepository extends CrudRepository<Employee, Long> { // Long: Type of Employee ID.

    Employee findByEmpNo(String empNo);

    List<Employee> findByFullNameLike(String fullName);

    List<Employee> findByHireDateGreaterThan(Date hireDate);

    @Query("SELECT coalesce(max(e.id), 0) FROM Employee e")
    Long getMaxId();

}