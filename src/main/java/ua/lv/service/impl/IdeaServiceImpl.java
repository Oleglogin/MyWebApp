package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.IdeaDAO;
import ua.lv.entity.Idea;
import ua.lv.service.IdeaService;

import java.util.List;

@Service
@Transactional
public class IdeaServiceImpl implements IdeaService {

    @Autowired
    IdeaDAO ideaDAO;
    public void addIdea(Idea idea) {
        ideaDAO.save(idea);
    }

    public void updateIdea(Idea idea) {
        ideaDAO.save(idea);
    }

    public void removeIdea(int id) {
        ideaDAO.delete(id);
    }

    public Idea getIdeaById(int id) {
        return ideaDAO.findOne(id);
    }

    public List<Idea> idealist() {
        return ideaDAO.findAll();
    }
}
