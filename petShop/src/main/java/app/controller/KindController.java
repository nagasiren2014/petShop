package app.controller;

import app.entity.Kind;
import app.repository.KindRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@SuppressWarnings("Duplicates")
public class KindController {
    @Autowired
    private KindRepository kindRepository;


    @RequestMapping(value = "/admin/kind/kindEdit")
    public String editKind(@RequestParam(value = "idEdit") String idEdit, Model model)
    {
        Kind kind = kindRepository.findById(idEdit).orElse(new Kind());
        model.addAttribute("kindEdit",kind);
        return "kindEdit";
    }

    @RequestMapping(value = "/admin/kind")
    public String viewKind(
            @RequestParam(value = "newkind", defaultValue = "") String newkind,
                           @RequestParam(value = "id",defaultValue = "") String id,
                           @RequestParam(value = "idEdit",defaultValue = "") String idEdit,
                           @RequestParam(value = "nameEdit",defaultValue = "") String nameEdit,
                           Model model)
    {
        if(!newkind.equals("")) {
            Kind kind = new Kind(newkind);
            kindRepository.save(kind);
        }
        else
        if(!id.equals(""))
        {
            try {
                kindRepository.deleteById(id);
            }
            catch(Exception e)
            {}

        }
        else

        if(!idEdit.equals("") && !nameEdit.equals(""))
        {
            Kind kind = new Kind(idEdit,nameEdit);
            kindRepository.save(kind);
        }
        List<Kind> kindList = (List<Kind>) kindRepository.findAll();
        model.addAttribute("kindList",kindList);

        return "kind";
    }
}
