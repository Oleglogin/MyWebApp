package ua.lv.service;

import ua.lv.entity.Experience;

import java.util.List;

/**
 * Created by User on 22.11.2017.
 */
public interface ExperienceService {
    public void addExperience(Experience experience);
    public void updateExperience(Experience experience);
    public Experience getExperienceById(int id);
    public List<Experience> ExperienceList();
    public void removeExperience(int id);
}
