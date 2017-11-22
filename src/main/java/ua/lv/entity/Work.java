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
    private String workTitle;
    @Column(columnDefinition = "text")
    private String content;
    private String workImg;

    private int likes;
    private int dislikes;



    @ManyToOne(cascade = CascadeType.MERGE, fetch =  FetchType.EAGER)
    private User user;

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
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public int getDislikes() {
        return dislikes;
    }

    public void setDislikes(int dislikes) {
        this.dislikes = dislikes;
    }

    public Work() {

    }

    @Override
    public String toString() {
        return "Work{" +
                "id=" + id +
                ", workTitle='" + workTitle + '\'' +
                ", content='" + content + '\'' +
                ", workImg='" + workImg + '\'' +
                ", user=" + user +
                '}';
    }
}
