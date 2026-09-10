package com.learn.JobApp.controller;

import com.learn.JobApp.model.JobPost;
import com.learn.JobApp.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class JobController {

    @Autowired
    private JobService jobService;

    @GetMapping({"/","home"})
    public String home(){
        return "home";
    }

    @GetMapping("viewalljobs")
    public String viewalljobs(Model m){
        List<JobPost> Jobs = jobService.getAllJobs();
        m.addAttribute("jobPosts", Jobs);
        return "viewalljobs";
    }

    @GetMapping("addjob")
    public String addjob(){
        return "addjob";
    }

    @PostMapping("handleForm")
    public String success(JobPost jobPost, Model m){
        jobService.addJob(jobPost);
        m.addAttribute("jobPost", jobPost);
        return "success";
    }
}
