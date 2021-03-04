const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

let cohortInput = process.argv[2];
let limit = process.argv[3];

pool.query(
`SELECT students.id as student_id, students.name AS name,
 cohorts.name as cohort 
 FROM students 
 JOIN cohorts ON cohorts.id = cohort_id
 WHERE cohorts.name LIKE '%${cohortInput}%'
 LIMIT ${limit};`
)
.then(res =>{
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
})
.catch(err => console.error('query error', err,stack));