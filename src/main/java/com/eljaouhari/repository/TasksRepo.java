package com.eljaouhari.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.eljaouhari.model.Tasks; 

public interface TasksRepo extends JpaRepository <Tasks, Long> {
	List < Tasks > findByUserName(String user);

}
