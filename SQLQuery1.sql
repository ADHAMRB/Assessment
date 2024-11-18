Create Database Management

Create Table Userr
(
UserID int Identity(100,1) Primary Key,
Namee nvarchar(88) NOT NULL,
Passwordd nvarchar(88) NOT NULL,
Email nvarchar(88) Unique NOT NULL,
Rolee nvarchar(88)
);

Create Table Tasks
(
TaskID int identity(100,1) primary key,
Title nvarchar(88) NOT NULL,
Descriptionn nvarchar(88) NULL,
Statuss nvarchar(88),
DueDate datetime,
UserID int,
foreign key(UserID) references Userr(UserID)
);

Insert into Userr
VALUES
('John Sturgis','john1234@','john124@gmail.com','Manager'),
('John Doe','john456#','john456@gmail.com','Employee'),
('Adham RB','Adhamrb123!','adhamrb69@gmail.com','Employee'),
('Wasfy','Wasfy897@','wasfy89@gmail.com','Employee'),
('Nour','Nour234@','nour456@gmail.com','Employee'),
('Khaled','gouba123','KhaledMahgoub124@gmail.com','Employee');

Insert into Tasks
VALUES
('Game Development','Needs to Make A Game in 3 days','In Progress',11/17/2024, 101),
('Cyber Security','Needs to Hack A Bank and steal 1 million dollars','Completed',11/18/2024, 102),
('Software Development','Needs to Make A Mobile App','Pending',11/20/2024, 103),
('Testing','Test our new Program','In Progress',10/17/2024, 104),
('Accounting','Manage our Taxes','Completed',11/23/2024, 105),
('Web Development','Needs to Make A Website for our Company','In Progress',11/19/2024, 102),
('Software Development','Needs to Make A Desktop app in 4 days','Pending',11/15/2024, 101);	

