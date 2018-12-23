package app.controller;


import app.entity.Providers;


import app.repository.ProviderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import java.util.List;

@Controller
@SuppressWarnings("Duplicates")
public class ProvidersController {

    @Autowired
    private ProviderRepository providerRepository;


    @RequestMapping(value = "/admin/invoices")
    public String invoiceView()
    {
        return "invoices";
    }

    @RequestMapping(value = "/admin/providers/providerEdit")
    public String editKind(@RequestParam(value = "idEdit") String idEdit, Model model)
    {
        Providers providers = providerRepository.findById(idEdit).orElse(new Providers());
        model.addAttribute("providerEdit",providers);

        return "providerEdit";
    }

    @RequestMapping(value = "/admin/providers")
    public String viewProviders(
            @RequestParam(value = "idprovider",defaultValue = "") String idprovider,
            @RequestParam(value = "providername",defaultValue = "") String providername,
            @RequestParam(value = "provideraddress",defaultValue = "") String provideraddress,
            @RequestParam(value = "providerphone",defaultValue = "") String providerphone,
            @RequestParam(value = "idEdit",defaultValue = "") String idEdit,
            @RequestParam(value = "idDel",defaultValue = "") String idDel,

            Model model)
    {
        if(!providername.equals("") && !provideraddress.equals("") && !providerphone.equals("") && idEdit.equals("")) {
            Providers providers = new Providers(providername,provideraddress,providerphone);
            providerRepository.save(providers);
        }
        else
        if(!idDel.equals(""))
        {
            try {
                providerRepository.deleteById(idDel);
            }
            catch(Exception e)
            {}

        }
        else

        if(!idEdit.equals("") && !providername.equals("") && !provideraddress.equals("") && !providerphone.equals(""))
        {
            Providers providers = new Providers(idEdit,providername,provideraddress,providerphone);
            providerRepository.save(providers);
        }
        List<Providers> providersList = (List<Providers>) providerRepository.findAll();
        model.addAttribute("providersList",providersList);

        return "providers";
    }
}
