package ua.lv.service;

import ua.lv.entity.Idea;

import java.util.List;

/**
 * Created by User on 05.11.2017.
 */
public interface IdeaService  {

    public void addIdea(Idea idea);
    public void updateIdea(Idea idea);
    public void removeIdea(int id);
    public Idea getIdeaById(int id);
    public List<Idea> idealist();
}
