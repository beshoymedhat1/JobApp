package com.learn.SBR.service;

import com.learn.SBR.model.JobPost;
import com.learn.SBR.repository.JobRepo;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Getter
@Service
public class JobService {

    private JobRepo repo;

    @Autowired
    public void setRepo(JobRepo repo) {
        this.repo = repo;
    }

    public void addJob(JobPost job) {
        repo.save(job);
    }

    public List<JobPost> getAllJobs() {
        return repo.findAll();
    }

    public JobPost getJob(int num) {
        return repo.findById(num).orElse(new JobPost());
    }

    public void updateJob(JobPost jobPost) {
        repo.save(jobPost);
    }

    public void deleteJob(int postId) {
        repo.deleteById(postId);
    }

    public List<JobPost> searchJobs(String keyword) {
        return repo.findByPostProfileContainingIgnoreCaseOrPostDescContainingIgnoreCase(keyword, keyword);
    }
}
