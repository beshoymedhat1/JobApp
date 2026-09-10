package com.learn.JobApp.service;

import com.learn.JobApp.model.JobPost;
import com.learn.JobApp.repository.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {

    private JobRepo jrepo;

    public JobRepo getJ() {
        return jrepo;
    }

    @Autowired
    public void setJ(JobRepo j) {
        this.jrepo = j;
    }

    public void addJob(JobPost job) {
        jrepo.save(job);
    }

    public List<JobPost> getAllJobs() {
        return jrepo.fetchAllJobs();
    }
}
