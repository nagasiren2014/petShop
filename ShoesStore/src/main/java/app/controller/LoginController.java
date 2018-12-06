package app.controller;

import app.entity.Login;
import app.entity.Boss;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import app.repository.LoginRepository;
import app.repository.BossRepository;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;



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
                               @RequestParam(value = "id",defaultValue = "-1") String id, @RequestParam(value = "pass",defaultValue = "-1") String pass ,
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

    @RequestMapping("/admin/add/addSuccess")
    public String addSuccess(@RequestParam(value = "kind",defaultValue = "") String kind,
                             @RequestParam(value = "age",defaultValue = "") String age,
                             @RequestParam(value = "nem",defaultValue = "") String name,
                             @RequestParam(value = "gender",defaultValue = "") String gender,
                             @RequestParam(value = "character",defaultValue = "") String character,
                             @RequestParam(value = "vaccine",defaultValue = "") String vaccine,
                             @RequestParam(value = "registered",defaultValue = "") String registered,
                             @RequestParam(value = "price",defaultValue = "") String price, Model model)
    {
        Boss boss = new Boss(kind,name,gender,age,character,vaccine,registered,price + "$");
        bossRepository.save(boss);
        return "addSuccess";
    }




}
