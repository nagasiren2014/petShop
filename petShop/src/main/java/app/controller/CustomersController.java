package app.controller;


import app.entity.City;
import app.entity.Customers;
import app.entity.Providers;


import app.repository.CityRepository;
import app.repository.CustomersRepository;
import app.repository.ProviderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import java.util.List;

@Controller
@SuppressWarnings("Duplicates")
public class CustomersController {

    @Autowired
    private CustomersRepository customersRepository;


    @RequestMapping(value = "/admin/customers/customerEdit")
    public String editCustomer(@RequestParam(value = "idEdit") String idEdit, Model model)
    {
        Customers customers = customersRepository.findById(idEdit).orElse(new Customers());
        model.addAttribute("customerEdit",customers);

        return "customerEdit";
    }

    @RequestMapping(value = "/admin/customers")
    public String viewProviders(
            @RequestParam(value = "idcustomer",defaultValue = "") String idcustomer,
            @RequestParam(value = "customername",defaultValue = "") String customername,
            @RequestParam(value = "customeraddress",defaultValue = "") String customeraddress,
            @RequestParam(value = "customerphone",defaultValue = "") String customerphone,
            @RequestParam(value = "idEdit",defaultValue = "") String idEdit,
            @RequestParam(value = "idDel",defaultValue = "") String idDel,

            Model model)
    {
        if(!customername.equals("") && idEdit.equals("")) {
            Customers customers = new Customers(customername,customeraddress,customerphone);
            customersRepository.save(customers);
        }
        else
        if(!idDel.equals(""))
        {
            try {
                customersRepository.deleteById(idDel);
            }
            catch(Exception e)
            {}

        }
        else

        if(!idEdit.equals("") && !customeraddress.equals("") && !customername.equals("")&& !customerphone.equals(""))
        {
            Customers customers = new Customers(idEdit,customername,customeraddress,customerphone);
            customersRepository.save(customers);
        }
        List<Customers> customersList = (List<Customers>) customersRepository.findAll();
        model.addAttribute("customersList",customersList);

        return "customers";
    }
}
