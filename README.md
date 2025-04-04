![2nf](https://github.com/user-attachments/assets/6471ed85-ac3e-4431-8bbe-beddea733914)# Exam Scheduling Management System
This database system is developed for exam scheduling management. Information has been collected from each faculty in MMU and report according to each category. 

### Lecturers
Lecturers are the persons who are teaching and guiding students in the university in the learning process. There are many lecturers for each faculty and each lecturer is responsible for different subjects. They are also responsible for booking the exam time and exam venue for the subject they taught. Each lecturer has a unique lecturer ID. The data stored regarding each lecturer includes lecturer ID, name, address, contact number, faculty, subject code and email address.

### Students
Students are the persons who are studying in the university. Each student belongs to their faculty. There are three grade levels of students, which are foundation, diploma and degree. They need to register the subject based on their faculty, grade level and intake month. The student ID is unique. The data stored on students includes student ID, student name, date of birth, IC, contact number, address, faculty, nationality, grade level, intake month and email address.

### Subjects
The university has many subjects that students can register. The subjects are based on the faculties. There are various faculty. It has faculty of law, business, engineering, and information technology. For example, the faculty of information technology has computer programming, operating systems, database systems, mathematical techniques and others. Each subject has a unique code. The data stored on faculty are the subject code, subject name, faculty code, faculty name, credit hour, and exam duration. 

### Venue
Each venue can be booked by lecturers at different times to have the exam. A venue can only be booked by one lecturer for one duration. The venue information that needs to be stored is the venue code is unique, venue name, and capacity.

### Booking
Each lecturer can book the venue for examination for each subject. Booking number will be provided after the booking is successful. The booking information that needsto be stored is booking number is unique, the venue code, subject code, date, start time, and end time.

## Business Rules
1) Each subject can be taught by many lecturers. Each lecturer can teach many subjects. \
  a. Each lecturer has many subject assignments. \
  b. Each assignment has assigned by a lecturer. \
  c. Each subject has many assignments. \
  d. Each assignment has belonged to a subject. 
2) Each student can register many subjects. Each subject can be registered by many students. \
  a. Each student has many subject registrations.\
  b. Each registration is made by a student.\
  c. Each subject has many subject registrations.\
  d. Each registration has belonged to a subject.
3) Each subject may make many bookings. Each booking is for a subject.
4) Each venue may make has bookings. Each booking is for a venue.

## Entity Relational Diagram (ERD)
### Crow’s Foot:
![Picture1](https://github.com/user-attachments/assets/06b2959e-491d-43a0-b9bd-ab0fdb065299)
### Chen's Model:
![Picture2](https://github.com/user-attachments/assets/8f4a2c4b-28a6-4325-bbe1-a9119c84d475)

## Normalization
### 1NF:
![1nf](https://github.com/user-attachments/assets/2a6fdc4d-d25a-4ceb-b85f-45337f82dc9f)
### 2NF:
![2nf](https://github.com/user-attachments/assets/1bc90ec4-c097-4eb2-a9d0-863c852bc4a1)
### 3NF:
![3nf](https://github.com/user-attachments/assets/a999131d-a7e5-4f30-a1ae-158b9aa2fcfc)






