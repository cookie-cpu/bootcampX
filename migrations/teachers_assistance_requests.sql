CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  start_date DATE,
  end_date DATE,
  is_active BOOLEAN
);


CREATE TABLE assisstance_requests (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id ,
  student_id ,
  teacher_id ,
  created_at DATE,
  started_at DATE,
  completed_at DATE,
  student_feedback TEXT,
  teacher_feedback TEXT,


);