package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.ExperienceDAO;
import ua.lv.entity.Experience;
import ua.lv.service.ExperienceService;

import java.util.List;

@Service
@Transactional
public class ExperienceServiceImpl implements ExperienceService {
    @Autowired
    ExperienceDAO experienceDAO;

    public void addExperience(Experience experience) {
        experienceDAO.save(experience);
    }

    public void updateExperience(Experience experience) {
        experienceDAO.save(experience);
    }

    public Experience getExperienceById(int id) {
        return experienceDAO.findOne(id);
    }

    public List<Experience> ExperienceList() {
        return experienceDAO.findAll();
    }

    public void removeExperience(int id) {
        experienceDAO.delete(id);
    }
}
