--use Library
--CREATE Database Library



CREATE TABLE Persons (

PersonID int,
LastName varchar(255),
FirstName varchar(255),
Address varchar(255),
City varchar(255)
);



CREATE TABLE Role(

RoleID int IDENTITY(1,1) NOT NULL,
RoleName nvarchar(100) NOT NULL
CONSTRAINT PKRole PRIMARY KEY CLUSTERED
(
  RoleID ASC
)WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
)
ON[PRIMARY]
GO


CREATE TABLE [User](

userID int IDENTITY(1,1) NOT NULL,
LastName nvarchar(100) NOT NULL,
FirstName nvarchar(100) NOT NULL,
UserName nvarchar(100) NOT NULL,
[Password] nvarchar(100) NOT NULL,
RoleID_FK int NOT NULL
CONSTRAINT PKUSER PRIMARY KEY CLUSTERED
(
[UserID] ASC
)

WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
)
ON[PRIMARY]
GO

ALTER TABLE [dbo].[User] WITH CHECK ADD CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID_FK])
REFERENCES [dbo].[Role]([RoleID])
GO

--genre, author, publisher







CREATE TABLE [Genre](

GenreID int IDENTITY(1,1) NOT NULL,   --is this correct? Do i need (1,1) or anything of sort?
[Name] nvarchar(100) NOT NULL,
[Description] nvarchar(100) NULL,
[IsFiction] bit NOT NULL

CONSTRAINT PKGENRE PRIMARY KEY CLUSTERED
(
[GenreID] ASC
)

WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
)
ON[PRIMARY]
GO





CREATE TABLE [Author](

AuthorID int IDENTITY (1,1) NOT NULL,
FirstName nvarchar(100) NOT NULL,
LastName nvarchar(100) NOT NULL,
Bio nvarchar(500) NULL,
DateOfBirth datetime NULL,
BirthLocation nvarchar(100) NULL

CONSTRAINT PKAUTHOR PRIMARY KEY CLUSTERED
(
[AuthorID] ASC
)

WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
)
ON[PRIMARY]
GO





CREATE TABLE[Publisher](
PublisherID int IDENTITY(1,1) NOT NULL,
[Name] nvarchar(100) NOT NULL,
[Address] nvarchar(100) NOT NULL,
City nvarchar(100) NOT NULL,
[State] nvarchar(100) NOT NULL,
Zip int NOT NULL

CONSTRAINT PKPUBLISHER PRIMARY KEY CLUSTERED
(
[PublisherID] ASC
)

WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
)
ON[PRIMARY]
GO



CREATE TABLE [dbo].[Book](

[BookID] [int] IDENTITY(1,1) NOT NULL,
[Title] [nvarchar](100) NOT NULL,
[Description] [nvarchar](1000) NULL,
[Price] [money] NOT NULL,
[IsPaperBack] [bit] NOT NULL,
[PublishDate] [datetime] NOT NULL,
[AuthorID_FK] [int] NOT NULL,
[GenreID_FK] [int] NOT NULL,
[PublisherID_FK] [int] NOT NULL,

CONSTRAINT[PK_BOOK_KEY] PRIMARY KEY CLUSTERED
(

[BookID] ASC

)

WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
)
ON[PRIMARY]
GO


ALTER TABLE [dbo].[Book] WITH CHECK ADD CONSTRAINT [FK_Book_Author] FOREIGN KEY([AuthorID_FK])
REFERENCES [dbo].[Author]([AuthorID])

ALTER TABLE[dbo].[Book] WITH CHECK ADD CONSTRAINT [FK_Book_Genre] FOREIGN KEY([GenreID_FK])
REFERENCES [dbo].[Genre] ([GenreID])
GO

ALTER TABLE [dbo].[Book] WITH CHECK ADD CONSTRAINT [FK_Book_Publisher] FOREIGN KEY ([PublisherID_FK])
REFERENCES [dbo].[Publisher] ([PublisherID])
GO


