package app.controller;


import app.entity.Branch;
import app.entity.Employee;
import app.entity.Job;
import app.entity.Status;
import app.repository.BranchRepository;
import app.repository.EmployeeRepository;
import app.repository.JobRepository;
import app.repository.StatusRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
@SuppressWarnings("Duplicates")
public class EmployeeController {

    @Autowired
    private EmployeeRepository employeeRepository;
    @Autowired
    private JobRepository jobRepository;
    @Autowired
    private StatusRepository statusRepository;
    @Autowired
    private BranchRepository branchRepository;

    @RequestMapping(value = "/admin/employee")
    public String viewEmployee(Model model)
    {
        List<Employee> employeeList = (List<Employee>)(employeeRepository.findAll());
        model.addAttribute("employeeList",employeeList);
        List<Branch> branchList = (List<Branch>)(branchRepository.findAll());
        List<Job> jobList = (List<Job>)(jobRepository.findAll());
        List<Status> statusList = (List<Status>)(statusRepository.findAll());
        model.addAttribute("branchList",branchList);
        model.addAttribute("jobList",jobList);
        model.addAttribute("statusList",statusList);
        return "employee";
    }

    @RequestMapping("/admin/employee/deleted")
    public String method(@RequestParam(value = "delete",defaultValue = "") List<String> params, Model model)
    {
        if(!params.isEmpty()) {
            for (String item : params) {
                employeeRepository.deleteById(item);
                deleteFile(item);
            }

            return "employeeDeletedd";
        }
        else
            return "errorDelEmployee";
    }

    @RequestMapping(value = "/admin/employee/employeeEdit")
    public String editEmployee(@RequestParam(value = "idedit",defaultValue = "none") String idedit, Model model)

    {
        Employee employee = employeeRepository.findById(idedit).orElse(new Employee());
        List<Branch> branchList = (List<Branch>)(branchRepository.findAll());
        List<Status> statusList = (List<Status>)(statusRepository.findAll());
        List<Job> jobList = (List<Job>)(jobRepository.findAll());
        model.addAttribute("employee",employee);
        model.addAttribute("branchList",branchList);
        model.addAttribute("statusList",statusList);
        model.addAttribute("jobList",jobList);
        String branchname = branchRepository.findById(employee.getIdbranch()).orElse(new Branch()).getBranchname();
        model.addAttribute("branchname",branchname);
        String statusname = statusRepository.findById(employee.getIdstatus()).orElse(new Status()).getStatusname();
        model.addAttribute("statusname",statusname);
        String jobname = jobRepository.findById(employee.getIdjob()).orElse(new Job()).getJobname();
        model.addAttribute("jobname",jobname);
        return "employeeEdit";
    }

    @RequestMapping(value = "/admin/employee/add")
    public String addEmployee(Model model)
    {
        List<Branch> branchList = (List<Branch>)(branchRepository.findAll());
        List<Status> statusList = (List<Status>)(statusRepository.findAll());
        List<Job> jobList = (List<Job>)(jobRepository.findAll());

        model.addAttribute("branchList",branchList);
        model.addAttribute("statusList",statusList);
        model.addAttribute("jobList",jobList);

        return "employeeAdd";
    }

    @RequestMapping(value = "/admin/employee/addSuccess")
    public String addEmployeeSuccess(
            @RequestParam(value = "firstname",defaultValue = "") String firstname,
            @RequestParam(value = "lastname",defaultValue = "") String lastname,
            @RequestParam(value = "gender",defaultValue = "") String gender,
            @RequestParam(value = "dayin",defaultValue = "") String dayin,
            @RequestParam(value = "address",defaultValue = "") String address,
            @RequestParam(value = "birthday",defaultValue = "") String birthday,
            @RequestParam(value = "age",defaultValue = "") String age,
            @RequestParam(value = "idbranch",defaultValue = "") String idbranch,
            @RequestParam(value = "phone",defaultValue = "") String phone,
            @RequestParam(value = "idstatus",defaultValue = "") String idstatus,
            @RequestParam(value = "idjob",defaultValue = "") String idjob,
            MultipartFile file, Model model
    )
    {
        Employee newEmployee = new Employee(firstname,lastname,gender,dayin,address,idbranch,phone,idstatus,idjob,birthday,age);
        employeeRepository.save(newEmployee);
        List<Employee> employeeList = (List<Employee>) employeeRepository.findAll();
        String lastEmployeeID = String.valueOf(employeeList.get(employeeList.size() - 1).getIdemployee());
        saveFileTo(file,lastEmployeeID);
        return "employeeAddSuccess";
    }

    @RequestMapping(value = "/admin/employee/editSuccess")
    public String editEmployeeSuccess(
            @RequestParam(value = "idedit",defaultValue = "") String idedit,
            @RequestParam(value = "firstname",defaultValue = "") String firstname,
            @RequestParam(value = "lastname",defaultValue = "") String lastname,
            @RequestParam(value = "gender",defaultValue = "") String gender,
            @RequestParam(value = "dayin",defaultValue = "") String dayin,
            @RequestParam(value = "address",defaultValue = "") String address,
            @RequestParam(value = "birthday",defaultValue = "") String birthday,
            @RequestParam(value = "age",defaultValue = "") String age,
            @RequestParam(value = "idbranch",defaultValue = "") String idbranch,
            @RequestParam(value = "phone",defaultValue = "") String phone,
            @RequestParam(value = "idstatus",defaultValue = "") String idstatus,
            @RequestParam(value = "idjob",defaultValue = "") String idjob,
            MultipartFile file, Model model)
    {
        Employee newEmployee = new Employee(idedit,firstname,lastname,gender,dayin,address,idbranch,phone,idstatus,idjob,birthday,age);
        employeeRepository.save(newEmployee);
        saveFileTo(file, idedit);
        return "employeeEditSuccess";
    }
    private static void deleteFile(String id)
    {

        File file = new File(System.getProperty("user.dir") + "/src/main/webapp/resources/static/img/employee/"+ id + ".jpg");
        file.delete();
    }

    private static void saveFileTo(MultipartFile file, String id)
    {
        try {

            if(!file.isEmpty())
            {
                // Get the file and save it somewhere
                byte[] bytes = file.getBytes();
                Path path = Paths.get(System.getProperty("user.dir") + "/src/main/webapp/resources/static/img/employee/" + id + ".jpg");
                Files.write(path, bytes);
            }


        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
