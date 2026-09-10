CREATE TABLE IF NOT EXISTS job_post (
    post_id INT PRIMARY KEY,
    post_profile VARCHAR(255) NOT NULL,
    post_desc VARCHAR(1000) NOT NULL,
    req_experience INT NOT NULL,
    post_tech_stack VARCHAR(1000) NOT NULL
    );