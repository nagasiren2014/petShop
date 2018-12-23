package app.controller;


import app.entity.City;
import app.entity.Providers;


import app.repository.CityRepository;
import app.repository.ProviderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import java.util.List;

@Controller
@SuppressWarnings("Duplicates")
public class CityController {

    @Autowired
    private CityRepository cityRepository;


    @RequestMapping(value = "/admin/cities/cityEdit")
    public String editCity(@RequestParam(value = "idEdit") String idEdit, Model model)
    {
        City city = cityRepository.findById(idEdit).orElse(new City());
        model.addAttribute("cityEdit",city);

        return "cityEdit";
    }

    @RequestMapping(value = "/admin/cities")
    public String viewProviders(
            @RequestParam(value = "idcity",defaultValue = "") String idcity,
            @RequestParam(value = "cityname",defaultValue = "") String cityname,
            @RequestParam(value = "idEdit",defaultValue = "") String idEdit,
            @RequestParam(value = "idDel",defaultValue = "") String idDel,

            Model model)
    {
        if(!cityname.equals("") && idEdit.equals("")) {
            City city = new City(cityname);
            cityRepository.save(city);
        }
        else
        if(!idDel.equals(""))
        {
            try {
                cityRepository.deleteById(idDel);
            }
            catch(Exception e)
            {}

        }
        else

        if(!idEdit.equals("") && !cityname.equals("") )
        {
            City city = new City(idEdit,cityname);
            cityRepository.save(city);
        }
        List<City> cityList = (List<City>) cityRepository.findAll();
        model.addAttribute("cityList",cityList);

        return "cities";
    }
}
