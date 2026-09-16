data = LOAD '/user/input/university_student_dataset.csv' USING PigStorage(',') AS
    (student_id:chararray, name:chararray, gender:chararray, age:int, department:chararray,
     admission_year:int, semester:int, course_code:chararray, course_name:chararray,
     credit_hours:float, attendance_percentage:float, midterm_marks:float, final_marks:float,
     assignment_marks:float, total_marks:float, grade:chararray, gpa:float, cgpa:float,
     scholarship:chararray, hostel_resident:chararray, family_income_range:chararray,
     extracurricular_activities:chararray);

filtered = FILTER data BY student_id != 'Student_ID';

grouped = GROUP filtered BY department;

avg_att = FOREACH grouped GENERATE group AS department, AVG(filtered.attendance_percentage) AS avg_attendance;

sorted = ORDER avg_att BY avg_attendance DESC;

top5 = LIMIT sorted 5;

STORE top5 INTO '/user/output_pig3' USING PigStorage(',');
