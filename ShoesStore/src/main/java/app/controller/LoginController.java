package app.controller;

import app.entity.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import app.repository.LoginRepository;

import java.util.Optional;

@Controller

public class LoginController {

    @Autowired
    private LoginRepository loginRepository;



    @RequestMapping(value = "/")
    public String loginView()
    {
        return "login";
    }

    @RequestMapping("/index")
    public String dasboardView(@RequestParam("id") String id, @RequestParam("pass") String pass ,Model model) {
    model.addAttribute("id",id);
    model.addAttribute("pass",pass);
        return "index";
    }
}
