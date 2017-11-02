package ua.lv.entity;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.File;
import java.io.IOException;

/**
 * Created by User on 01.11.2017.
 */
@Entity
public class Account {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String email;
    private String firstName;
    private String lastName;
    //private String avatar;
    private String country;
    private String city;
    @OneToOne(cascade = CascadeType.MERGE,fetch = FetchType.LAZY)
    private User user;

    public Account() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

//    public String getAvatar() {
//        return avatar;
//    }
//    public void setAvatar(MultipartFile multipartFile) {
//        String path = System.getProperty("user.home") + File.separator + "Pictures\\";
//        try {
//            multipartFile.transferTo(new File(path + multipartFile.getOriginalFilename()));
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        this.avatar = "\\avatar\\" + multipartFile.getOriginalFilename();
//    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }





}
