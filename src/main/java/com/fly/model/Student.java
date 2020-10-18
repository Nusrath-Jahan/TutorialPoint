
package com.fly.model;



import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "student")
public class Student {
    @Id
    private int id;
    private String username;
    private String name;
    private String email;
    private String pass;
    private String address;

    public Student() {
    }

    public Student(int id, String username, String name, String email, String pass, String address) {
        this.id = id;
        this.username = username;
        this.name = name;
        this.email = email;
        this.pass = pass;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", username=" + username + ", name=" + name + ", email=" + email + ", pass=" + pass + ", address=" + address + '}';
    }
    
    
}
