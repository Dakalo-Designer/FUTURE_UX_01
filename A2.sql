Create Table REVIEWRATING (
RatingId INT PRIMARY KEY ,
RatingText VARCHAR (500),
RatingRank INT,

)
Select *
from REVIEWRATING;

INSERT  into REVIEWRATING (RatingId,RatingText,RatingRank)
values (1234,'Excellent',10),
       (2468,'Good',7),
     ( 3691,'Bad',3),
       (1357,'Excellent',9),
      (5643,'Great',7);

DROP TABLE IF EXISTS READER ;
Create Table READER (

 UserName VARCHAR(25) PRIMARY KEY  ,
UserPassword VARCHAR(25),
UserRegisterDate DATE,
UserLastLOGIN DATETIME,
UserProfilePic Image
)
/*Select *
 from READER;*/
 INSERT  into READER(UserName,UserPassword,UserRegisterDate,UserLastLOGIN ,UserProfilePic)
values ('Dakalo','#ddk','2015-03-01','2025-03-26 12:16:16',' '),
       ('Daniel','*star','2026-05-24','2026-01-16 12:11:15',' '),
	   ('nduvho','#wack','2026-02-20','2026-01-26 16:35:11',' '),
	   ('Daki','@mercy','2005-05-25','2026-02-26 01:16:16',' '),
	   ('Roli','$tick','01-03-2024','2025-12-25 18:45:23' ,' ');

Create Table QUESTSTATUS (
 QuestStatusId INT PRIMARY KEY,
QuestStatusText VARCHAR(25)

)


 INSERT  into  QUESTSTATUS(QuestStatusId,QuestStatusText)
 VALUES (0786,'In Progress'),
         (0781,'Pending'),
		 (0785,'In Progress'),
		 (0788,'Done'),
		 (0782,'Accepted');

 /*Select *
 from QUESTSTATUS;*/

Create table AUTHOR 
(

 AuthorId INT PRIMARY KEY,
AuthorName VARCHAR(50),
AuthorSurname VARCHAR(50)

)


 INSERT  into  AUTHOR(AuthorId,AuthorName,AuthorSurname)
 VALUES(005,'Bavinci','Boolean'),
       (025,'davinci','leanig'),
	   (001,'John','Vincent'),
	   (011,'Mukovhe','Bugana'),
	   (070,'Shaka','Lembe');
/*Select *
 from  AUTHOR ;*/

 

Create table BOOK(
BookId INT PRIMARY KEY,
BookTitle VARCHAR(30),
BookSynopsis VARCHAR(199),
BookPuclicationDate DATE

)
INSERT  into  BOOK(BookId,BookTitle,BookSynopsis,BookPuclicationDate)
VALUES(9876,'Echoes','Uncovering lost truths','2024-08-22'),
       (9886,'Encho',' lost their paths in life','2025-02-22'),
	   (9816,'Survival story','Surviving the wilderness all alone','2009-08-06'),
	   (9806,'Love story','How people fall in love with each other','2026-01-28'),
	   (9896,'Africans','The history og Africans abd where they come from','2021-06-08');

/*Select *
 from  BOOK ;*/

Create table TAG(
 TagId INT PRIMARY KEY,
TagText VARCHAR(30),

)
INSERT  into TAG(TagId,TagText)
             VALUES (101,'ECLUSIVE PAGES'),
             (102,'UNIQUES READ'),
			 (103,'VERY INTERESTING'),
			 (104,'IMPORTANT'),
			 (105,'INTRIGUING');



/*Select *
 from  BOOKTAG ;*/

 Create table READERBOOK(
 ReaderBookId INT  PRIMARY KEY,
 UserName VARCHAR(25),
 BookId INT,
FOREIGN KEY (UserName) REFERENCES READER(UserName),
FOREIGN  KEY (BookId)  REFERENCES BOOK(BookId),
ReaderBookLastRead DATETIME 
)

INSERT INTO READERBOOK (ReaderBookId, ReaderBookLastRead) 
VALUES(1,2024-02-10),
      (2,2024-01-15),
	  (3,2024-05-22),
	  (4,2024-04-18),
	  (5,2024-03-05);

Create table REVIEW(
 ReviewId INT PRIMARY KEY,
 ReaderBookId INT,
 FOREIGN KEY (ReaderBookId) REFERENCES  READERBOOK(ReaderBookId) ,
ReviewTitle VARCHAR(40),
ReviewDate DATE,
ReviewText VARCHAR(100),
RatingId INT,
FOREIGN KEY (RatingId) REFERENCES REVIEWRATING(RatingId))

INSERT INTO REVIEW (ReviewId, ReviewTitle, ReviewDate, ReviewText) 
VALUES(101,'Pioneer story','2024-02-15',1),
      (202,'Beautifully','2024-02-16' ,2),
      (303,'Greater ','2024-02-17',3),
      (404,'Love','2024-02-18',1),
      (505,'Historical','2024-02-19',2);






Create table READERREQUEST(
ReaderQuestId INT PRIMARY KEY ,
QuestNo INT,
ReaderBookId INT,
QuestStatusId INT,

FOREIGN KEY (ReaderBookId) REFERENCES READERBOOK(ReaderBookId),
FOREIGN KEY (QuestStatusId) REFERENCES QUESTSTATUS(QuestStatusId) 

)
INSERT INTO READERREQUEST (ReaderQuestId, QuestNo )
VALUES( 90,1),
       (8,2),
	   (56,3),
	   (78,4),
	   (98,5);

Create table BOOKAUTHOR(
 
 AuthorId INT,
 BookId INT,
 FOREIGN KEY (AuthorId)  references AUTHOR (Authorid),
 FOREIGN KEY (BookId)  references BOOK(BookId),

)


Create table FORUMQUESTION(
ForumQuestionId INT PRIMARY KEY,
ForumQuestionTitle VARCHAR(60),
ForumQuestionDate DATE,
ForumResponseToId VARCHAR(60),
BookId INT,
FOREIGN KEY (BookId) REFERENCES BOOK(BookId),
ForumResponseTold  VARCHAR(80))

INSERT INTO FORUMQUESTION ( ForumQuestionId,ForumQuestionTitle, ForumResponseTold, ForumQuestionDate)
VALUES(1,'QuestionS','Why is Big Brother important?','2024-02-20'),
       (2,'Prideful','Why does Darcy change?','2024-02-21'),
	   (3,'TomSawyer','Is Tom a hero?','2024-02-22'),
	   (4,'Harry styles','Why is Hogwarts special?','2024-02-23'),
	   (5,'Peace','Is it historical?','2024-02-24');

	   Create table QUEST(
	   QuestId INT PRIMARY KEY,
	   BookId INT,
	   FOREIGN KEY (BookId) REFERENCES BOOK(BookId),
	   BookQuestNo INT,
	   QuestText VARCHAR(50),
	   QuestPahges INT
	   )

Create table QUESTIONOPTIONS(
  QuestOptionNo INT PRIMARY KEY,
 QuestId INT ,
FOREIGN KEY  (QuestId) REFERENCES QUEST(QuestId),
 QuestOptionText VARCHAR(552)
)
INSERT INTO QUESTIONOPTIONS(QuestOptionNo, QuestOptionText)
VALUES(100,'Winst'),
      (105,'Main character'),
	  (110,'Mississippi town'),
	  (115,'Hogwarts'),
	  (120,'Napoleonic War');
	  



 Create table BOOKTAG(
    BookId INT  ,
   FOREIGN KEY  (BookId) REFERENCES BOOK( BookId),
   TagId INT,
 FOREIGN KEY(TagId) REFERENCES TAG(TagId),
 )
 INSERT INTO BOOKTAG (BookId, TagId) 
VALUES(9876,10),
(9886,2),
(9816,3),
(9806,4),
(9896,5);
 SELECT 
  
 BookTitle,AuthorName,AuthorSurname
 FROM BOOK
 JOIN BOOKAUTHOR 
 ON BOOK.BookId = BOOKAUTHOR.BookId
 JOIN AUTHOR
 ON BOOKAUTHOR.AuthorId = AUTHOR.AuthorId


SELECT 
 BookTitle,TagText
FROM BOOK 
INNER JOIN BOOKTAG 
ON BOOK.BookId = BOOKTAG.BookId
INNER JOIN TAG 
    ON BOOKTAG.TagId = TAG.TagId

SELECT 
BookTitle,ReaderBookLastRead
FROM READER 
INNER JOIN READERBOOK 
ON READER.UserName = READERBOOK.UserName
INNER JOIN BOOK 
ON READERBOOK.BookId = BOOK.BookId

SELECT 
ReviewTitle,RatingText
FROM REVIEW 
INNER JOIN REVIEWRATING
ON REVIEWRATING.RatingId = REVIEWRATING.RatingId


SELECT 
UserName,BookTitle,ReviewTitle,ReviewText
FROM READER
INNER JOIN BOOK
ON  BOOK.BookId= READERBOOK.BookId
INNER JOIN REVIEW
ON READERBOOK.ReaderBookId =REVIEW.ReaderBookId


SELECT 
BookTitle,QuestText
FROM BOOK 
INNER JOIN QUEST 
ON BOOK.BookId = QUEST.BookId

SELECT 
QuestText,QuestOptionNo,QuestOptionText
FROM QUEST 
INNER JOIN QUESTOPTIONS 
ON QUEST.QuestId =  QUESTOPTIONS.QuestId























