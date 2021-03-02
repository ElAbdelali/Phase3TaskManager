package com.eljaouhari.service;

import java.util.Date;

import java.util.List;
import java.util.Optional;

import com.eljaouhari.model.Tasks;

public interface ITasksService {

    List < Tasks > getTasksByUser(String user);

    Optional < Tasks > getTasksById(long id);

    void updateTasks(Tasks tasks);

    void addTasks(String name, String desc, Date targetDate, boolean isDone);

    void deleteTasks(long id);

    void saveTasks(Tasks task);
}
