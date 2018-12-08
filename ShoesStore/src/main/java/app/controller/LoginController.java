package app.controller;

import app.entity.Login;
import app.entity.Boss;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import app.repository.LoginRepository;
import app.repository.BossRepository;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import java.util.List;


@Controller

public class LoginController {

    @Autowired
    private LoginRepository loginRepository;
    @Autowired
    private BossRepository bossRepository;

    @RequestMapping(value = "/")
    public String loginView(@RequestParam(value = "id",defaultValue = "-1") String id, HttpServletResponse response,Model model)
    {
        Cookie cookie = new Cookie("id", "0"); //
        response.addCookie(cookie);

        model.addAttribute("valueCookie",cookie.getValue());
        return "login";
    }

    @RequestMapping("/admin")

    public String dasboardView(@CookieValue(value = "id", defaultValue = "0") String idCookie,
                               @RequestParam(value = "id",defaultValue = "-1") String id,
                               @RequestParam(value = "pass",defaultValue = "-1") String pass,

                               Model model, HttpServletResponse response) {

        Login index = loginRepository.findById(id).orElse(loginRepository.findById(idCookie).orElse(new Login("notfound","notfound","notfound")));

        String loginStatus = "Correct !";

        if((index.getId() != "notfound!" && index.getPassword().equals(pass)) ) {

            Cookie cookie = new Cookie("id", index.getId());
            response.addCookie(cookie);
            List<Boss> bossList = (List<Boss>) bossRepository.findAll();
            model.addAttribute("index", id);

            model.addAttribute("nameLogin", index.getName());
            model.addAttribute("bossList", bossList);

            return "admin";
        }
        else
        {
            if(idCookie.equals("0")) {
                Cookie cookie = new Cookie("id", "0");
                response.addCookie(cookie);
                loginStatus = "Error password or ID !";
                model.addAttribute("loginStatus", loginStatus);
                return "login";
            }//Sai tai khoan va mat khau that
            else
            {
                List<Boss> bossList = (List<Boss>) bossRepository.findAll();
                model.addAttribute("index", idCookie);
                index = loginRepository.findById(idCookie).orElse(new Login());
                model.addAttribute("nameLogin", index.getName());
                model.addAttribute("bossList", bossList);
                return "admin";
            }//Lenh refresh trang admin
        }


    }

    @RequestMapping("/admin/add")
    public String addBoss()
    {
        return "add";
    }

    @RequestMapping("/admin/addSuccess")
    public String addSuccess(@RequestParam(value = "kind",defaultValue = "") String kind,
                             @RequestParam(value = "age",defaultValue = "") String age,
                             @RequestParam(value = "nem",defaultValue = "") String name,
                             @RequestParam(value = "gender",defaultValue = "") String gender,
                             @RequestParam(value = "character",defaultValue = "") String character,
                             @RequestParam(value = "vaccine",defaultValue = "") String vaccine,
                             @RequestParam(value = "registered",defaultValue = "") String registered,
                             @RequestParam(value = "price",defaultValue = "") String price,
                             @RequestParam(value = "file") MultipartFile file, Model model) throws IOException
    {

        Boss boss = new Boss(kind,name,gender,age,character,vaccine,registered,  price );
        bossRepository.save(boss);
        List<Boss> bossList = (List<Boss>) bossRepository.findAll();
        String lastBossID = String.valueOf(bossList.get(bossList.size() - 1).getIdboss());
        saveFileTo(file,lastBossID);

        return "addSuccess";
    }



@RequestMapping("/admin/deleted")
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

@RequestMapping("/admin/edit")
public String editPet(@RequestParam(value = "idedit",defaultValue = "none") String id, Model model)
{
    Boss boss = bossRepository.findById(id).orElse(new Boss());
    model.addAttribute("boss",boss);
    return "edit";
}

@RequestMapping("/admin/edit/editSuccess")
public String editSuccessPet(@RequestParam(value = "kind",defaultValue = "") String kind,
                      @RequestParam(value = "age",defaultValue = "") String age,
                      @RequestParam(value = "nem",defaultValue = "") String name,
                      @RequestParam(value = "gender",defaultValue = "") String gender,
                      @RequestParam(value = "character",defaultValue = "") String character,
                      @RequestParam(value = "vaccine",defaultValue = "") String vaccine,
                      @RequestParam(value = "registered",defaultValue = "") String registered,
                      @RequestParam(value = "price",defaultValue = "") String price,
                      @RequestParam(value = "file") MultipartFile file,
                      @RequestParam(value = "idedit",defaultValue = "none") String id,
                      Model model)
{

    Boss boss = new Boss(id,kind,name,gender,age,character,vaccine,registered,price);
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
            if(!file.isEmpty()) {
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
