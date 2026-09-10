INSERT INTO job_post
(post_id, post_profile, post_desc, req_experience, post_tech_stack)
VALUES
    (1, 'Java Developer',
     'Build and maintain Spring Boot applications.',
     2, 'Java,Spring Boot,SQL'),

    (2, 'Frontend Developer',
     'Create responsive interfaces for web applications.',
     1, 'HTML,CSS,JavaScript,React'),

    (3, 'Backend Developer',
     'Design REST APIs and work with databases.',
     3, 'Java,Spring Boot,PostgreSQL,Docker'),

    (4, 'Full Stack Developer',
     'Develop frontend pages and backend services.',
     2, 'Java,Spring Boot,React,PostgreSQL')

    ON CONFLICT (post_id) DO NOTHING;