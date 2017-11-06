package ua.lv.entity;

import javax.persistence.*;

@Entity
public class Idea  {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String ideaTitle;
//    @Column(columnDefinition = "text")
    private String content;

    public Idea() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIdeaTitle() {
        return ideaTitle;
    }

    public void setIdeaTitle(String ideaTitle) {
        this.ideaTitle = ideaTitle;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Idea{" +
                "id=" + id +
                ", ideaTitle='" + ideaTitle + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}
