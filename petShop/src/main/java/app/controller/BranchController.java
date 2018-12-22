package app.controller;

import app.entity.Branch;
import app.entity.City;
import app.entity.Kind;
import app.repository.BranchRepository;
import app.repository.CityRepository;
import app.repository.KindRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@SuppressWarnings("Duplicates")
public class BranchController {
    @Autowired
    private BranchRepository branchRepository;
    @Autowired
    private CityRepository cityRepository;


    @RequestMapping(value = "/admin/branch/branchEdit")
    public String editKind(@RequestParam(value = "idEdit") String idEdit, Model model)
    {
        Branch branch = branchRepository.findById(idEdit).orElse(new Branch());
        model.addAttribute("branchEdit",branch);
        return "branchEdit";
    }

    @RequestMapping(value = "/admin/branch")
    public String viewKind(
            @RequestParam(value = "idbranch",defaultValue = "") String idbranch,
            @RequestParam(value = "branchname",defaultValue = "") String branchname,
            @RequestParam(value = "address",defaultValue = "") String address,
            @RequestParam(value = "city",defaultValue = "") String city,
            @RequestParam(value = "idEdit",defaultValue = "") String idEdit,
            @RequestParam(value = "idDel",defaultValue = "") String idDel,

            Model model)
    {
        if(!branchname.equals("") && !address.equals("") && !city.equals("")) {
            Branch branch = new Branch(branchname,address,city);
            branchRepository.save(branch);
        }
        else
        if(!idDel.equals(""))
        {
            try {
                branchRepository.deleteById(idDel);
            }
            catch(Exception e)
            {}

        }
        else

        if(!idEdit.equals("") && !branchname.equals("") && !address.equals("") && !city.equals(""))
        {
            Branch branch = new Branch(idbranch,branchname,address,city);
            branchRepository.save(branch);
        }
        List<Branch> branchList = (List<Branch>) branchRepository.findAll();
        model.addAttribute("branchList",branchList);
        List<City> cityList = (List<City>) cityRepository.findAll();
        model.addAttribute("cityList",cityList);
        return "branch";
    }
}
