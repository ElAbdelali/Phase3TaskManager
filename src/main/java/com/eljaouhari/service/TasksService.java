package com.eljaouhari.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eljaouhari.model.Tasks;
import com.eljaouhari.repository.TasksRepo;

@Service
public class TasksService implements ITasksService {

    @Autowired
    private TasksRepo tasksRepository;

    @Override
    public List < Tasks > getTasksByUser(String user) {
        return tasksRepository.findByUserName(user);
    }

    @Override
    public Optional < Tasks > getTasksById(long id) {
        return tasksRepository.findById(id);
    }

    @Override
    public void updateTasks(Tasks tasks) {
        tasksRepository.save(tasks);
    }

    @Override
    public void addTasks(String name, String desc, Date targetDate, boolean isDone) {
        tasksRepository.save(new Tasks(name, desc, targetDate, isDone));
    }

    @Override
    public void deleteTasks(long id) {
        Optional < Tasks > todo = tasksRepository.findById(id);
        if (todo.isPresent()) {
            tasksRepository.delete(todo.get());
        }
    }

    @Override
    public void saveTasks(Tasks tasks) {
        tasksRepository.save(tasks);
    }
}
