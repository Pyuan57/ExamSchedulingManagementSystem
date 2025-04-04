# Exam Scheduling Management System
This database system is developed for exam scheduling management. Information has been collected from each faculty and report according to each category. 

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
