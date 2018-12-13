package app.controller;

import app.entity.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import app.repository.LoginRepository;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;



@Controller
@SuppressWarnings("Duplicates")

public class LoginController {

    @Autowired
    private LoginRepository loginRepository;


    @RequestMapping(value = "/")
    public String loginView(@RequestParam(value = "id",defaultValue = "-1") String id, HttpServletResponse response,Model model)
    {
        Cookie cookie = new Cookie("id", "0"); //
        response.addCookie(cookie);

        model.addAttribute("valueCookie",cookie.getValue());
        return "login";
    }


    @RequestMapping(value = "/test")
    public String test()
    {
        return "test";
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

            model.addAttribute("index", id);

            model.addAttribute("nameLogin", index.getName());


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


                model.addAttribute("index", idCookie);
                index = loginRepository.findById(idCookie).orElse(new Login());
                model.addAttribute("nameLogin", index.getName());

                return "admin";
            }//Lenh refresh trang admin
        }


    }



}
