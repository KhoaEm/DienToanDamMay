package bootsample.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bootsample.dao.TaskRepository;
import bootsample.model.Task;
@Service
@Transactional
public class TaskService {
	private final TaskRepository taskRepository;

	public TaskService(TaskRepository taskRepository) {
	
		this.taskRepository = taskRepository;
	}
	public List<Task> findAll(){
		List<Task> tasks=new ArrayList<>();
		 for(Task task: taskRepository.findAll()) {
			 tasks.add(task);
		 }
		 return tasks;
	}
	
	public Task findTask(int id) {
		Task taskcantim=new Task();
		List<Task> tasks=new ArrayList<>();
		for(Task task: taskRepository.findAll()) {
			if(task.getId()==id)
				taskcantim= task;
		 }
		return taskcantim;
	}
	public void save(Task task) {
		taskRepository.save(task);
	}
	
	public void delete(int id) {
		taskRepository.delete(id);
	}
}
