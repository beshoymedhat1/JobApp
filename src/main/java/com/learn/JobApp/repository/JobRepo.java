package com.learn.JobApp.repository;

import com.learn.JobApp.model.JobPost;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.Arrays;
import java.util.List;

@Getter
@Repository
public class JobRepo {

    private JdbcTemplate jdbc;

    @Autowired
    public void setJdbc(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    public void save(JobPost job) {
        String sql = """
                INSERT INTO job_post
                (post_id, post_profile, post_desc, req_experience, post_tech_stack)
                VALUES (?, ?, ?, ?, ?)
                """;

        int rows = jdbc.update(
                sql,
                job.getPostId(),
                job.getPostProfile(),
                job.getPostDesc(),
                job.getReqExperience(),
                String.join(",", job.getPostTechStack())
        );

        System.out.println(rows + " row affected");
    }

    public List<JobPost> fetchAllJobs() {
        String sql = "Select * From job_post";

        return jdbc.query(sql, (rs, rowNum) -> new JobPost(
                rs.getInt("post_id"),
                rs.getString("post_profile"),
                rs.getString("post_desc"),
                rs.getInt("req_experience"),
                Arrays.asList(rs.getString("post_tech_stack").split(","))
        ));
    }
}
