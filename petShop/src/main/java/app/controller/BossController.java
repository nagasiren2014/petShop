package app.controller;

import app.entity.Boss;
import app.entity.Kind;
import app.entity.Login;
import app.entity.Providers;
import app.repository.BossRepository;
import app.repository.KindRepository;
import app.repository.LoginRepository;
import app.repository.ProviderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
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

public class BossController {
    @Autowired
    private BossRepository bossRepository;
    @Autowired
    private LoginRepository loginRepository;
    @Autowired
    private KindRepository kindRepository;
    @Autowired
    private ProviderRepository providerRepository;

    @RequestMapping("/admin/pets")
    public String petsView(@CookieValue(value = "id", defaultValue = "0") String idCookie,
                           @RequestParam(value = "id",defaultValue = "-1") String id,
                           @RequestParam(value = "pass",defaultValue = "-1") String pass,
                           Model model)
    {

        List<Boss> bossList = (List<Boss>) bossRepository.findAll();
        model.addAttribute("index", idCookie);
        Login index = loginRepository.findById(idCookie).orElse(new Login());
        model.addAttribute("nameLogin", index.getName());
        model.addAttribute("bossList", bossList);
        List<Providers> providersList = (List<Providers>) providerRepository.findAll();
        model.addAttribute("providersList", providersList);
        return "pets";
    }

    @RequestMapping("/admin/pets/add")
    public String addBoss(Model model)
    {
        List<Kind> kindList = (List<Kind>) kindRepository.findAll();
        model.addAttribute("kindList",kindList);
        List<Providers> providersList = (List<Providers>) providerRepository.findAll();
        model.addAttribute("providersList", providersList);
        return "add";
    }

    @RequestMapping("/admin/pets/addSuccess")
    public String addSuccess(@RequestParam(value = "kind",defaultValue = "") String kind,
                             @RequestParam(value = "age",defaultValue = "") String age,
                             @RequestParam(value = "nem",defaultValue = "") String name,
                             @RequestParam(value = "gender",defaultValue = "") String gender,
                             @RequestParam(value = "character",defaultValue = "") String character,
                             @RequestParam(value = "vaccine",defaultValue = "") String vaccine,
                             @RequestParam(value = "registered",defaultValue = "") String registered,
                             @RequestParam(value = "price",defaultValue = "") String price,
                             @RequestParam(value = "idprovider", defaultValue = "") String idprovider,
                             @RequestParam(value = "file") MultipartFile file, Model model) throws IOException
    {

        Boss boss = new Boss(kind,name,gender,age,character,vaccine,registered,price, idprovider);
        bossRepository.save(boss);
        List<Boss> bossList = (List<Boss>) bossRepository.findAll();
        String lastBossID = String.valueOf(bossList.get(bossList.size() - 1).getIdboss());
        saveFileTo(file,lastBossID);

        return "addSuccess";
    }



    @RequestMapping("/admin/pets/deleted")
    public String method(@RequestParam(value = "delete",defaultValue = "") List<String> params, Model model)
    {
        if(!params.isEmpty()) {
            for (String item : params) {
                bossRepository.deleteById(item);
                deleteFile(item);
            }

            return "deleted";
        }
        else
            return "errorDel";
    }



    @RequestMapping("/admin/pets/edit")
    public String editPet(@RequestParam(value = "idedit",defaultValue = "none") String id, Model model)
    {
        Boss boss = bossRepository.findById(id).orElse(new Boss());
        model.addAttribute("boss",boss);
        List<Kind> kindList = (List<Kind>) kindRepository.findAll();
        model.addAttribute("kindList",kindList);
        List<Providers> providersList = (List<Providers>) providerRepository.findAll();
        model.addAttribute("providersList",providersList);
        String kindname = kindRepository.findById(boss.getBosskind()).orElse(new Kind()).getName();
        model.addAttribute("kindName",kindname);
        String providername = providerRepository.findById(boss.getIdprovider()).orElse(new Providers()).getProvidername();
        model.addAttribute("providerName",providername);
        return "petEdit";
    }

    @RequestMapping("/admin/pets/editSuccess")
    public String editSuccessPet(@RequestParam(value = "kind",defaultValue = "") String kind,
                                 @RequestParam(value = "age",defaultValue = "") String age,
                                 @RequestParam(value = "nem",defaultValue = "") String name,
                                 @RequestParam(value = "gender",defaultValue = "") String gender,
                                 @RequestParam(value = "character",defaultValue = "") String character,
                                 @RequestParam(value = "vaccine",defaultValue = "") String vaccine,
                                 @RequestParam(value = "registered",defaultValue = "") String registered,
                                 @RequestParam(value = "price",defaultValue = "") String price,
                                 @RequestParam(value = "idprovider",defaultValue = "") String idprovider,
                                 @RequestParam(value = "file") MultipartFile file,
                                 @RequestParam(value = "idedit",defaultValue = "none") String id,
                                 Model model)
    {

        Boss boss = new Boss(id,kind,name,gender,age,character,vaccine,registered,price, idprovider);
        bossRepository.save(boss);
        saveFileTo(file,id);
        return "editSuccess";
    }

    private static void deleteFile(String id)
    {

        File file = new File(System.getProperty("user.dir") + "/src/main/webapp/resources/static/img/bossImg/"+ id + ".jpg");
        file.delete();
    }

    private static void saveFileTo(MultipartFile file, String id)
    {
        try {

            if(!file.isEmpty())
            {
                // Get the file and save it somewhere
                byte[] bytes = file.getBytes();
                Path path = Paths.get(System.getProperty("user.dir") + "/src/main/webapp/resources/static/img/bossImg/" + id + ".jpg");
                Files.write(path, bytes);
            }


        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
