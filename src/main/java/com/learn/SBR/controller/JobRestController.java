package com.learn.SBR.controller;

import com.learn.SBR.model.JobPost;
import com.learn.SBR.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class JobRestController {

    @Autowired
    private JobService jobService;

    @GetMapping("/jobPost/{postId}")
    public JobPost getJob(@PathVariable int postId) {
        return jobService.getJob(postId);
    }

    @GetMapping("/jobPosts")
    public List<JobPost> getAllJobs() {
        return jobService.getAllJobs();
    }

    @GetMapping("/jobPosts/keyword/{keyword}")
    public List<JobPost> searchByKeywords(@PathVariable("keyword") String keyword) {
        return jobService.searchJobs(keyword);
    }

    @PostMapping("/jobPost")
    public String addJob(@RequestBody JobPost jobPost) {
        jobService.addJob(jobPost);
        return "Added Successfully";
    }

    @PutMapping("/jobPost")
    public String updateJob(@RequestBody JobPost jobPost) {
        jobService.updateJob(jobPost);
        return "Updated Successfully";
    }

    @DeleteMapping("/jobPost/{postId}")
    public String deleteJob(@PathVariable int postId) {
        jobService.deleteJob(postId);
        return "Deleted Successfully";
    }
}
