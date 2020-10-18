package com.fly.dao;

import com.fly.model.Student;
import com.fly.model.User;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class UserDAO {

    @Autowired
    SessionFactory sessionfactory;

    public SessionFactory getSessionfactory() {
        return sessionfactory;
    }

    public void setSessionfactory(SessionFactory sessionfactory) {
        this.sessionfactory = sessionfactory;
    }
    
    
    
    @Transactional
    public void save(User user) {
        sessionfactory.getCurrentSession().saveOrUpdate(user);
        sessionfactory.getCurrentSession().flush();
    }

    @Transactional
    public User login(User user) {
        String sql = "from User where username = '"+user.getUsername()+"'";
        List<User> u = getSessionfactory().openSession().createQuery(sql).list();
        return u.get(0);
    }
    
    
    
    @Transactional
    public void store(Student student) {
        sessionfactory.getCurrentSession().saveOrUpdate(student);
        sessionfactory.getCurrentSession().flush();
    }
    
    @Transactional
    public List<Student> getAll(){
        List<Student> student = sessionfactory.getCurrentSession().createCriteria(Student.class).list();
        return student;
    }
    
}
