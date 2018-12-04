package app.controller;

import app.entity.Login;
import app.entity.boss;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import app.repository.LoginRepository;
import app.repository.BossRepository;

import javax.persistence.EntityManager;
import java.util.*;



@Controller

public class LoginController {

    @Autowired
    private LoginRepository loginRepository;
    @Autowired
    private BossRepository bossRepository;

    @RequestMapping(value = "/")
    public String loginView()
    {
        return "login";
    }

    @RequestMapping("/index")
    public String dasboardView(@RequestParam("id") String id, @RequestParam("pass") String pass ,Model model) {
        Login index = loginRepository.findById(id).orElse(new Login("not found !", "not found !"));
        String loginStatus = "Correct !";
            if(index.getId() == "not found !" || !pass.equals(index.getPassword()))
            {

                loginStatus = "Error password or ID !";
                model.addAttribute("loginStatus",loginStatus);
                return "login";
            }
            else
            {
                List<boss> bossList = (List<boss>)bossRepository.findAll();
                model.addAttribute("index",index);
                model.addAttribute("bossList",bossList);

                return "index";
            }

    }




}
