CREATE	DATABASE	LibraryAssiment
USE	LibraryAssiment
CREATE	TABLE	Borrows
(
Id_Borrow int PRIMARY KEY IDENTITY,
Id_student int,
Id_Book int	,
takendate		date,
broughtdate		date,
CONSTRAINT	FK_Borrows_Books
FOREIGN	KEY (Id_Book)
REFERENCES  Books(Id_Book),
CONSTRAINT	FK_Borrows_student
FOREIGN	KEY (Id_student)
REFERENCES  student(Id_student)
)
CREATE	TABLE	Books
(
Id_Book int	PRIMARY	KEY IDENTITY ,
Name_book varchar(40),
price varchar(20),
publication_date date,
number_of_books int	,
Id_author int,
Id_type int	,
CONSTRAINT	FK_Books_Author
FOREIGN	KEY (Id_author)
REFERENCES  Author(Id_author),
CONSTRAINT	FK_Borrows_Type_Book
FOREIGN	KEY (Id_type)
REFERENCES  Type_Book(Id_type)
) 
CREATE	TABLE	Author
(
Id_author int	PRIMARY KEY IDENTITY  ,
Name_author varchar(40),
)
CREATE TABLE Type_Book
(
Id_type int	PRIMARY	KEY IDENTITY,
Type_book varchar(20),
)
CREATE TABLE student
(
Id_student int	PRIMARY	KEY IDENTITY	,
FullName varchar(20),
Birthdate date,
Id_Class int,
CONSTRAINT	FK_student_Class
FOREIGN	KEY (Id_Class)
REFERENCES  Class(Id_Class)
)
CREATE TABLE Class
(
Id_Class int	PRIMARY	KEY IDENTITY 		,
Name_Class varchar(20),
)

