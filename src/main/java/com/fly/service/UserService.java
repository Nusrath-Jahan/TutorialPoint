package com.fly.service;

import com.fly.dao.UserDAO;
import com.fly.model.Student;
import com.fly.model.User;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserService {

    @Autowired
    UserDAO userDAO;
    
    public List<Student> getAll(){
        return userDAO.getAll();
    }
    
    
    

    public void save(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();

        String username = map.get("username")[0];
        String password = map.get("password")[0];

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        userDAO.save(user);
    }

    public boolean login(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();

        String username = map.get("username")[0];
        String password = map.get("password")[0];
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        User u = userDAO.login(user);

        if (username.equals(u.getUsername()) && password.equals(u.getPassword())) {
            return true;
        } else {
            return false;
        }
    }
    
    
    
     public void store(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();
       

        String username = map.get("username")[0];
         String name = map.get("name")[0];
          String email = map.get("email")[0];
           String pass = map.get("pass")[0];
        String address = map.get("address")[0];

        Student student = new Student();
        student.setUsername(username);
        student.setName(name);
        student.setEmail(email);
        student.setPass(pass);
        student.setAddress(address);
        
        
        userDAO.store(student);
    }

}
