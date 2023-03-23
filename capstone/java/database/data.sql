BEGIN TRANSACTION;

INSERT INTO school (name) VALUES ('Cypress Hill ISD');

INSERT INTO users (username,password_hash,role) VALUES ('admin1','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username,password_hash,role) VALUES ('admin2','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username,password_hash,role) VALUES ('admin3','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO users (username,password_hash,role) VALUES ('teacher1','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_TEACHER');
INSERT INTO users (username,password_hash,role) VALUES ('teacher2','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_TEACHER');
INSERT INTO users (username,password_hash,role) VALUES ('teacher3','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_TEACHER');
INSERT INTO users (username,password_hash,role) VALUES ('teacher4','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_TEACHER');

INSERT INTO users (username,password_hash,role) VALUES ('student1','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_STUDENT');
INSERT INTO users (username,password_hash,role) VALUES ('student2','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_STUDENT');
INSERT INTO users (username,password_hash,role) VALUES ('student3','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_STUDENT');
INSERT INTO users (username,password_hash,role) VALUES ('student4','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_STUDENT');
INSERT INTO users (username,password_hash,role) VALUES ('student5','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_STUDENT');
INSERT INTO users (username,password_hash,role) VALUES ('student6','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_STUDENT');
INSERT INTO users (username,password_hash,role) VALUES ('student7','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_STUDENT');
INSERT INTO users (username,password_hash,role) VALUES ('student8','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_STUDENT');
INSERT INTO users (username,password_hash,role) VALUES ('student9','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_STUDENT');
INSERT INTO users (username,password_hash,role) VALUES ('student10','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_STUDENT');

INSERT INTO users (username,password_hash,role) VALUES ('parent1','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_PARENT');
INSERT INTO users (username,password_hash,role) VALUES ('parent2','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_PARENT');
INSERT INTO users (username,password_hash,role) VALUES ('parent3','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_PARENT');
INSERT INTO users (username,password_hash,role) VALUES ('parent4','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_PARENT');

--admin profiles
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1001, 'Theo', 'Mills', 'admin1@cypresshill.edu', 'https://i.postimg.cc/Z5qjnKWg/dadphoto-2.jpg');
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1002, 'Linette', 'Putnam', 'admin2@cypresshill.edu', 'https://i.postimg.cc/qqMSDFnN/pexels-photo-1024311-2.jpg');
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1003, 'JaMarcus', 'Meisner', 'admin3@cypresshill.edu', 'https://i.postimg.cc/vTNqqZbK/pexels-christina-morillo-1181391-2.jpg');


--teacher profiles
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1004, 'Lynda', 'Dodson', 'teacher1@cypresshill.edu', 'https://i.postimg.cc/qvf0kvxx/chemistry-teacher-5499052-960-720-2.jpg' );
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1005, 'Nadia', 'Campana', 'teacher2@cypresshill.edu', 'https://i.postimg.cc/rm7ZSKmh/woman-613309-960-720-2.jpg');
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1006, 'Fynn', 'Hopkins', 'teacher3@cypresshill.edu', 'https://i.postimg.cc/MGLJFZHB/allrounder-1232060-960-720-2.jpg');
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1007, 'Brian', 'Smets', 'teacher4@cypresshill.edu', 'https://i.postimg.cc/xT57ZjFd/pexels-photo-220453-2.jpg');


INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1008, 'Isabel', 'Glenn', 'student1@cypresshill.edu', 'https://i.postimg.cc/ryCTTQXm/girl-2098866-960-720-2.jpg');
INSERT INTO student (id, school_id, graduation_year) VALUES (1008, 1, 2026);
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1009, 'Wendy', 'Hargrave', 'student2@cypresshill.edu', 'https://i.postimg.cc/bwwFKR8K/pexels-antoni-shkraba-6609340-2.jpg');
INSERT INTO student (id, school_id, graduation_year) VALUES (1009, 1, 2026);
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1010, 'Kalum', 'Ortiz', 'student3@cypresshill.edu', 'https://i.postimg.cc/SQz4PkVW/Screenshot-2022-10-05-161208.jpg');
INSERT INTO student (id, school_id, graduation_year) VALUES (1010, 1, 2024);
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1011, 'Joseph', 'Farley', 'student4@cypresshill.edu', 'https://i.postimg.cc/Vk2BD9N9/pexels-andrea-piacquadio-3771091-2.jpg');
INSERT INTO student (id, school_id, graduation_year) VALUES (1011, 1, 2025);
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1012, 'Mariya', 'Mcgrath', 'student5@cypresshill.edu', 'https://i.postimg.cc/dQ2zTBBy/2-2-2.jpg');
INSERT INTO student (id, school_id, graduation_year) VALUES (1012, 1, 2025);
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1013, 'Jillian', 'Glenn', 'student6@cypresshill.edu', 'https://i.postimg.cc/d3WGdrXy/pexels-anastasiya-gepp-1462633-2.jpg');
INSERT INTO student (id, school_id, graduation_year) VALUES (1013, 1, 2025);
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1014, 'Anil', 'Key', 'student7@cypresshill.edu', 'https://i.postimg.cc/g24r0mCx/boy-2178303-960-720-2.jpg');
INSERT INTO student (id, school_id, graduation_year) VALUES (1014, 1, 2024);
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1015, 'Tyrique', 'Cline', 'student8@cypresshill.edu', 'https://i.postimg.cc/kGJwSxJQ/Black-Student-2-600x400-c-default-2.jpg');
INSERT INTO student (id, school_id, graduation_year) VALUES (1015, 1, 2024);
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1016, 'Gabriella', 'Morikawa', 'student9@cypresshill.edu', 'https://i.postimg.cc/KzXH1k3f/5f035f109555c14e62d64982-premed-college-freshman-girl-student-2.jpg');
INSERT INTO student (id, school_id, graduation_year) VALUES (1016, 1, 2025);
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1017, 'Marianna', 'Millington', 'student10@cypresshill.edu', 'https://i.postimg.cc/MTxYkyjC/high-shcool-student-2.jpg');
INSERT INTO student (id, school_id, graduation_year) VALUES (1017, 1, 2024);



--parent profiles
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1018, 'Miles', 'Millington', 'parent1@cypresshill.edu', 'https://i.postimg.cc/nLvhjmwc/istockphoto-1147066751-612x612-2.jpg');
INSERT INTO parent (id, phone_number, address) VALUES (1018, '(785)329-5564', '32 Walnut Street, Lebanon, Kansas, 66952');
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1019, 'Kim', 'Millington', 'parent2@cypresshill.edu', 'https://i.postimg.cc/9FFR6LgP/istockphoto-839128434-612x612-2.jpg');
INSERT INTO parent (id, phone_number, address) VALUES (1019, '(785)329-5564', '32 Walnut Street, Lebanon, Kansas, 66952');
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1020, 'Cory', 'Glenn', 'parent3@cypresshill.edu', 'https://i.postimg.cc/fyZJLyR0/hat-591973-960-720-2.jpg');
INSERT INTO parent (id, phone_number, address) VALUES (1020, '(785)329-8872', '58 Maple Street, Lebanon, Kansas, 66952');
INSERT INTO profile (id, first_name, last_name, email, image) VALUES (1021, 'Dan', 'Ortiz', 'parent4@cypresshill.edu', 'https://c.tenor.com/ygmHJkMgfdwAAAAC/ace-ventura-pet-detective.gif');
INSERT INTO parent (id, phone_number, address) VALUES (1021, '(785)329-6214', '27 Pine Street, Lebanon, Kansas, 66952');


INSERT INTO class_info (name, subject, teacher_id, school_id, description, period, start_time, end_time, school_year) VALUES ('Advanced Math: Trigonometry', 'Math', 1005, 1, 'Advanced Math with Ms. Campana', 'Period 1', '08:00:00', '09:00:00', 2023);
INSERT INTO class_info (name, subject, teacher_id, school_id, description, period, start_time, end_time, school_year) VALUES ('Social Studies 1', 'Social Studies', 1007, 1, '7th Grade Social Studies with Mr. Smets', 'Period 1', '08:00:00', '09:00:00', 2023);
INSERT INTO class_info (name, subject, teacher_id, school_id, description, period, start_time, end_time, school_year) VALUES ('Mixed Media 1', 'Art', 1004, 1, 'Mixed Media Art (all grades) with Mrs. Dodson', 'Period 1', '08:00:00', '09:00:00', 2023);
INSERT INTO class_info (name, subject, teacher_id, school_id, description, period, start_time, end_time, school_year) VALUES ('Honors Bio', 'Biology', 1006, 1, 'Honors Biology with Mr. Hopkins', 'Period 2', '09:00:00', '10:00:00', 2023);
INSERT INTO class_info (name, subject, teacher_id, school_id, description, period, start_time, end_time, school_year) VALUES ('Honors Bio', 'Biology', 1006, 1, 'Honors Biology with Mr. Hopkins', 'Period 3', '10:00:00', '11:00:00', 2023);


INSERT INTO class_info_student (class_id, student_id) VALUES (1, 1009);
INSERT INTO class_info_student (class_id, student_id) VALUES (1, 1010);
INSERT INTO class_info_student (class_id, student_id) VALUES (2, 1008);
INSERT INTO class_info_student (class_id, student_id) VALUES (2, 1011);
INSERT INTO class_info_student (class_id, student_id) VALUES (3, 1013);
INSERT INTO class_info_student (class_id, student_id) VALUES (3, 1014);
INSERT INTO class_info_student (class_id, student_id) VALUES (3, 1015);
INSERT INTO class_info_student (class_id, student_id) VALUES (3, 1016);
INSERT INTO class_info_student (class_id, student_id) VALUES (3, 1017);
INSERT INTO class_info_student (class_id, student_id) VALUES (4, 1014);
INSERT INTO class_info_student (class_id, student_id) VALUES (4, 1017);
INSERT INTO class_info_student (class_id, student_id) VALUES (5, 1015);
INSERT INTO class_info_student (class_id, student_id) VALUES (5, 1016);


INSERT INTO parent_student (parent_id, student_id, relation) VALUES (1018, 1017, 'Father');
INSERT INTO parent_student (parent_id, student_id, relation) VALUES (1019, 1017, 'Mother');
INSERT INTO parent_student (parent_id, student_id, relation) VALUES (1020, 1013, 'Grandmother');
INSERT INTO parent_student (parent_id, student_id, relation) VALUES (1021, 1010, 'Father');

INSERT INTO kudo_type (name, description, value) VALUES ('High Achiever', 'Awarded/Recognized for your outstanding accomplishment', 50);
INSERT INTO kudo_type (name, description, value) VALUES ('Volunteering', 'Lend your free time to help with school functions.', 25);
INSERT INTO kudo_type (name, description, value) VALUES ('Help a Classmate', 'Lend a helping hand to a classmate.', 15);
INSERT INTO kudo_type (name, description, value) VALUES ('Clean Up', 'Help pickup, even when you didnt make the mess.', 10);
INSERT INTO kudo_type (name, description, value) VALUES ('Lost & Found', 'Be responsible and turn in something missing', 10);
INSERT INTO kudo_type (name, description, value) VALUES ('Do a Good Deed', 'Do something kind for someone!', 10);
INSERT INTO kudo_type (name, description, value) VALUES ('School Spirit', 'Go the extra mile to show your school pride!', 5);
INSERT INTO kudo_type (name, description, value) VALUES ('Extra Effort', 'Go above and beyond on an assignment!', 5);


INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1003, 1013, 'Great job helping Arthur figure out how to prep his supplies!', 3);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1004, 1013, 'Wow, Jillian put in 5 outside hours of work making her sculpture look amazing!', 8);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1002, 1011, 'Shredded paper for us', 6);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1004, 1017, 'Thanks for all of the wonderful compliments you gave to other students! You really made them feel special!', 6);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1001, 1010, 'Helped us build this program! You did a great job!', 2);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1002, 1014, 'Filled in as mascot during the pep rally', 7);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1004, 1010, 'Picked up another kids books when they fell.', 6);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1007, 1014, 'Helped a hurt student in the parking lot', 6);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1004, 1010, 'Turned in a wallet that had money in it.', 5);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1002, 1014, 'Helped organize the computer cabinet', 2);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1005, 1010, 'Cleaned the entire cafeteria table off after someone spilled their milk.', 4);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1006, 1015, 'Helped clean up the locker room after the great gatoraid spill', 4);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1006, 1011, 'Putting away returned books in the library', 2);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1006, 1010, 'Taught a senior how to do 8th grade math.', 3);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1006, 1014, 'Turned in a missing backpack', 5);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1007, 1010, 'Won best project in NASAs Top Class Science Fair.', 1);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1004, 1008, 'Picked up some litter while walking to class.', 4);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1007, 1010, 'Extra credit for your amazing side project.', 8);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1004, 1010, 'Gave blankets in an after school drive to the homeless.', 2);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1004, 1011, 'Turned in a missing backpack', 5);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1005, 1011, 'Read books to elementary students', 2);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1005, 1013, 'Helped a crying child', 5);
INSERT INTO kudo_student (teacher_id, student_id, message, type_id) VALUES (1007, 1013, 'Beautiful diorama. Really captured the spirit of the project.', 5);


--INSERT INTO discipline_type () VALUES ();
--
--INSERT INTO discipline student () VALUES ();
--
INSERT INTO announcement (school_id, message, admin_id) VALUES (1, 'Two weeks until the next check-in! Get out there and show your teachers all the good deeds you can do!', 1001);
INSERT INTO announcement (message, admin_id) VALUES ('Attention all Students and Parents! Report cards will be going out next Monday!', 1002);

COMMIT TRANSACTION;