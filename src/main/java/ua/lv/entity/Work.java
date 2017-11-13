package ua.lv.entity;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.File;
import java.io.IOException;
@Entity
public class Work {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private int id;
    public String workTitle;
    @Column(columnDefinition = "text")
    public String content;
    public String workImg;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getWorkTitle() {
        return workTitle;
    }

    public void setWorkTitle(String workTitle) {
        this.workTitle = workTitle;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getWorkImg() {
        return workImg;
    }

    public void setWorkImg(MultipartFile multipartFile) {
        String path = System.getProperty("user.home") + File.separator + "Pictures\\";
        try {
            multipartFile.transferTo(new File(path + multipartFile.getOriginalFilename()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.workImg = "\\workImg\\" + multipartFile.getOriginalFilename();

    }

    public Work() {

    }
}