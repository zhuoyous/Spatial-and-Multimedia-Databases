Name:Zhuoyou Shen
ID:2035073656

General Design Idea: In my table, there are 19 entities in total. I design each entity by following the logic rules and required context. I decide to put the entities which have more connections in the middle like STUDENT and less connection on the edge to make the table more straightforward.

1) Entities:

STUDENTS has 5 attributes which are student ID, first name, last name, email address, and phone number. The primary key is student id.

PAYMENT has 4 attributes which are payment id, student id, payment amount, and data. The primary key is payment id. The foreign key is student id.

GROUP has 4 attributes which are group id, student id, project id, and group size. The primary key is group id. The foreign keys are student id and project id.

TABLE has 2 attributes which are table id and group id. The primary key is table id. The foreign key is group id.

STORAGE BOX has 3 attributes which are storage box id, table id, and project id. The primary key is storage box id. The foreign keys are table id and project id.

PART has 6 attributes which are part id, storage box id, project id, condition, part name, and part quantity. The primary key is part id. The foreign keys are storage box id and project id.

ORDER has 4 attributes which are order id, part id, supplier id, and data. The primary key is order id. The foreign keys are part id and supplier id.

SUPPLIER has 3 attributes which are supplier id, supplier name, and supplier location. The primary key is supplier id.

LIBRARY has 4 attributes which are library id, textbook id, student id, and location. The primary key is library id. The foreign keys are textbook id and student id.

TEXTBOOK has 3 attributes which are textbook id, textbook name, and textbook content. The primary key is textbook id.

PROJEXT has 5 attributes which are project id, instructor id, schedule id, project name, and project content. The primary key is project id. The foreign keys are instructor id and schedule id. 

ENROLLMENT OF PROJECT has 4 attributes which are student id, project id, project rating, and project enrollment date. The primary keys are student id and project id. The foreign keys are student id and project id.  (Weak Entity)

SCHDULE has 2 attributes which are schedule id and room id. The primary key is schedule id. The foreign key is room id.

INSTRUCTOR has 6 attributes which are instructor id, textbook id, instructor first name, instructor last name, address, and phone number. The primary key is instructor id. The foreign key is textbook id.

SALARY has 6 attributes which are salary id, instructor id, total teaching time, total overseeing time, salary amount, and salary paid date. The primary key is salary id. The foreign key is instructor id.

RATE has 5 attributes which are rate id, instructor id, student id, class id, and rate score. The primary key is rate id. The foreign keys are instructor id, student id, and class id.

CODING CLASS has 7 attributes which are class id, instructor id, schedule id, textbook id, coding language, class size, and class length. The primary key is class id. The foreign keys are instructor id, schedule id, and textbook id.

ENROLLMENT OF CODING CLASS has 4 attributes which are student id, class id, class rating, and class enrollment date. The primary key is student id. The foreign key is class id.  (Weak Entity) 

ROOM has 2 attributes which are room id and table id. The primary key is room id. The foreign key is table id.

2) Relationships:

Pay between STUDENT and PAYMENT is a one-to-one relationship because students pay a single flat fee at the beginning for the entire curriculum. Thus, I assume that one student only need to pay one-time tution. 

Attend between STUDENT and GROUP is a one-to-many relationship because as a group generally could contains 4 students and I assume that students could not attend differnt groups. they can only stay in one group.

Sit between GROUP and TABLE is a one-to-one relationship because I assume that a group sits in a table and a table could be taken by one group.

Has between TABLE and STORAGE BOX is a one-to-one relationship because one table has one storage box and one storage box belongs to one group. 

Contain between STORAGTE BOX and PART is a many-to-many relationship because one storage box could contain many parts. Also, one part could be contained in many storage box. 

Has between PART and ORDER is a many-to-many relationship because one order can have many parts and one part can be purchased by different orders. 

Is ordered from between ORDER and SUPPLIER is a many-to-many relationship because the owners of the institution plan to order project parts from several online suppliers (such as Perfect Circuit, Sweetwater, Amazon, Reverb) there is expected to be multiple orders placed with multiple vendors, to procure all the items.

Need between PROJECT and PART is a many-to-many relationship because each project would require parts specific to it which means that one project requires many parts. One part could also be required by many projects.

Assigned between PROJECT and STORAGE BOX is a one-to-one relationship because one project can be stored into one storage box. 

Sign up between GROUP and PROJECT is a one-to-one relationship because one group could only sign on project and one project can be signed to one group.

Enroll between STUDENT and ENROLLMENT OF CODING CLASS is a one-to-many relationship. Enroll between STUDENT and ENROLLMENT OF PROJECT is a one-to-many relationship. these are because students will sign up for a mix of coding classes, and projects, which means one or more. I also regard ENROLLMENT OF CODING CLASS and ENROLLMENT OF PROJECT as bridges to the CODING CLASS and PROJECT.

Is found in between ENROLLMENT OF CODING CLASS and CODING CLASS
is found in between ENROLLMENT OF PROJECT and PROJECT
It is a bridge entity. I assumed that there might be some coding classes that no students are interested in and none of the students signed up for it. Also, it is the same for projects that no students are interest in the projects and no one would sign it.

Check out between STUDENT and LIBRARY is a one-to-many relationship because a student can check out up to 4 books at a time. a book cannot be taken by two students.

Teach between INSTURCTOR and CODING CLASS is a many-to-many relationship because Instructors would teach a variety of coding classes and a class would have multiple instructors.

Oversee Between INSTURCTOR and PROJECT is a many-to-many relationship because Instructors would oversee a variety of hardware projects. A project would be overseen by many instructors.

Has between CODING CLASS and SCHEDULE and Has between PROJECT and SCHEDULE is a one-to-one relationship because students will be provided a schedule that will list where and when these will be.

Use between INSTRURCTOR and TEXTBOOK is many-to-many relationship because an instructor might specify a textbook for more than one class that he/she teaches. Each instructor could potentially use a different text (their favorite) for the same class.

Has between LIBRAYR and TEXTBOOK is a one-to-many relationship because there is a small library that contains books. The library could have many books and one book could only be contained by the small library.

Get paid between INSTRCTOR and SALARY is a one-to-one relationship because one instructor gets one salary, and one salary goes to that specific instructor. 

Rate between CODING CLASS and RATE.
Rate between INSTRCTOR and RATE.
Rate between STUDENT and RATE.
RATE is the bridge entity between RATE and STUDENT/INSTURCTOR/CLASS. I assume that at the end of the curriculum, each student will be required to rate their instructors, courses, and projects, using a single score for each (one to five stars). Thus, each student gives ratings to one or more classes/projects/instructors and  each class/project/instructor is rated by one or more students. 

Has between ROOM and TABLE is a one-to-many relations because one room could contain many tables. One table could not be contained by many rooms. 








