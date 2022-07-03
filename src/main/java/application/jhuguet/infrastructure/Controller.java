package application.jhuguet.infrastructure;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@org.springframework.stereotype.Controller
public class Controller {
    @GetMapping("/deployJenkins")
    public static String deployJenkins(Model model){
        System.out.println("Clicked me!");
        return "index";
    }
}
