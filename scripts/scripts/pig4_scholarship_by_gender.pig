data = LOAD '/user/input/university_student_dataset.csv' USING PigStorage(',') AS
    (student_id:chararray, name:chararray, gender:chararray, age:int, department:chararray,
     admission_year:int, semester:int, course_code:chararray, course_name:chararray,
     credit_hours:float, attendance_percentage:float, midterm_marks:float, final_marks:float,
     assignment_marks:float, total_marks:float, grade:chararray, gpa:float, cgpa:float,
     scholarship:chararray, hostel_resident:chararray, family_income_range:chararray,
     extracurricular_activities:chararray);

filtered = FILTER data BY student_id != 'Student_ID';

grouped = GROUP filtered BY (gender, scholarship);

result = FOREACH grouped GENERATE group.gender AS gender, group.scholarship AS scholarship, COUNT(filtered) AS total;

STORE result INTO '/user/output_pig4' USING PigStorage(',');
