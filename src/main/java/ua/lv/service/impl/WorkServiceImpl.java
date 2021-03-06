package ua.lv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lv.dao.WorkDAO;
import ua.lv.entity.Work;
import ua.lv.service.WorkService;

import java.util.List;

@Service
@Transactional
public class WorkServiceImpl implements WorkService{

    @Autowired
    WorkDAO workDAO;

    public void addWork(Work work) {
        workDAO.save(work);
    }

    public void updateWork(Work work) {
            workDAO.save(work);
    }

    public void removeWork(int id) {
        workDAO.delete(id);
    }

    public Work getWorkById(int id) {
        return workDAO.findOne(id);
    }

    public List<Work> workList() {
        return workDAO.findAll();
    }
}
