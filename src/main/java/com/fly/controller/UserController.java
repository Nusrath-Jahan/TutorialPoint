package com.fly.controller;

import com.fly.model.Student;
import com.fly.service.UserService;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/create")
    public String create() {
        System.out.println("Hello User");
        return "user/create";
    }

    @RequestMapping(value = "/login")
    public String login() {
        System.out.println("Login User");
        return "user/login";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        userService.save(request);
        return new ModelAndView("user/swelcome");
    }

    @RequestMapping(value = "/loginaction", method = RequestMethod.POST)
    public ModelAndView loginAction(ModelMap map, HttpServletRequest request) {
        Map<String, String[]> model = request.getParameterMap();

        boolean action = userService.login(request);
        if (action) {
            map.addAttribute("username", model.get("username")[0]);
            return new ModelAndView("user/swelcome");
        } else {
            return new ModelAndView("user/404");
        }
    }
    
    
    @RequestMapping(value = "/registration")
    public String Registration() {
        System.out.println("Hello User");
        return "user/registration";
    }
    
    
    
    
    @RequestMapping(value = "/addStudent")
    public String AddStudent() {
        System.out.println("Hello User");
        return "user/addStudent";
    }
  
    
    @RequestMapping(value = "/store", method = RequestMethod.POST)
    public ModelAndView store(HttpServletRequest request) {
        userService.store(request);
        return new ModelAndView("user/addStudent");
    }
    
    
    @RequestMapping(value = "/courses")
    public String courses() {
        System.out.println("Hello User");
        return "user/courses";
    }
   
    
//       $$$$$$ view $$$$$$$$$$$$
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public String View(ModelMap modelMap) {
        List<Student> student = userService.getAll();
        for (int i = 0; i < student.size(); i++) {
            System.out.println(student.get(i).getName() + " ............");
        }
        modelMap.addAttribute("empList", student);
        return "user/view";
    }
   
    //       $$$$$$ view $$$$$$$$$$$$
    
    
    @RequestMapping(value = "/swelcome")
    public String Swelcome() {
        System.out.println("Hello User");
        return "user/swelcome";
    }
    
    
     @RequestMapping(value = "/jsProgram")
    public String JsProgram() {
        System.out.println("Hello User");
        return "user/jsProgram";
    }
 
    @RequestMapping(value = "/new")
    public String New() {
        System.out.println("Hello User");
        return "user/jsProgram/new";
    }

}

@Controller
class IndexController {

    @RequestMapping(value = "/")
    public String index() {
        return "user/welcome";
    }

}
