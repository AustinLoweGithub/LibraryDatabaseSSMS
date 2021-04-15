SET IDENTITY_INSERT [dbo].[Genre] ON 
GO
INSERT [dbo].[Genre] ([GenreID], [Description], [IsFiction], [Name]) VALUES (1, N'A comic novel is usually a work of fiction in which the writer seeks to amuse the reader, sometimes ', 1, N'Humor')
GO
INSERT [dbo].[Genre] ([GenreID], [Description], [IsFiction], [Name]) VALUES (2, N'An account of someone''s life written by someone else.', 0, N'Biography')
GO
INSERT [dbo].[Genre] ([GenreID], [Description], [IsFiction], [Name]) VALUES (4, N'How to improvement yourself', 0, N'Self Improvement')
GO
INSERT [dbo].[Genre] ([GenreID], [Description], [IsFiction], [Name]) VALUES (5, N'Literature in the form of prose, especially short stories and novels, that describes imaginary event', 1, N'Fiction')
GO
SET IDENTITY_INSERT [dbo].[Genre] OFF
GO







SET IDENTITY_INSERT [dbo].[Author] ON 
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [Bio], [DateOfBirth], [BirthLocation]) VALUES (1, N'Sam', N'Stall', N'Sam Stall is an author, freelance writer, and former editor of Indianapolis Monthly magazine. He has', NULL, NULL)
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [Bio], [DateOfBirth], [BirthLocation]) VALUES (2, N'Kevin', N'Won', N'Wrote - Climbing Craftsmanship: Mastering Mental and Technical Skills', CAST(N'1984-06-24T00:00:00.000' AS DateTime), N'Saint Louis, Misssouri')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [Bio], [DateOfBirth], [BirthLocation]) VALUES (3, N'Roald', N'Dahl', N'Roald Dahl, was a spy, ace fighter-pilot, chocolate historian and medical inventor. He was also author of Charlie and Chocolate Factory.', CAST(N'1966-10-01T00:00:00.000' AS DateTime), N'Groveland, California')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [Bio], [DateOfBirth], [BirthLocation]) VALUES (4, N'Henry David', N'Thoreau', N'American author, naturalist, transcendentalist, pacifist, tax resister and philosopher.', CAST(N'1817-07-12T00:00:00.000' AS DateTime), N'Concord, MA')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [LastName], [Bio], [DateOfBirth], [BirthLocation]) VALUES (5, N'Mark', N'Twain', N'Samuel Langhorne Clemens, known by his pen name Mark Twain, was an American writer, humorist, entrepreneur, publisher, and lecturer.', CAST(N'1835-11-30T00:00:00.000' AS DateTime), N'Florida, MO')
GO
SET IDENTITY_INSERT [dbo].[Author] OFF
GO




SET IDENTITY_INSERT [dbo].[Publisher] ON 
GO
INSERT [dbo].[Publisher] ([PublisherID], [Name], [Address], [City], [State], [Zip]) VALUES (1, N'Penguin Random House', N'89348 Market Ave.', N'New York', N'NY', 19123)
GO
INSERT [dbo].[Publisher] ([PublisherID], [Name], [Address], [City], [State], [Zip]) VALUES (2, N'HarperCollins', N'43rd Roseland St.', N'Chicago', N'IL', 64452)
GO
INSERT [dbo].[Publisher] ([PublisherID], [Name], [Address], [City], [State], [Zip]) VALUES (4, N'Macmillan Publishers', N'120 McCallin Ave.', N'New York', N'NY', 19045)
GO
INSERT [dbo].[Publisher] ([PublisherID], [Name], [Address], [City], [State], [Zip]) VALUES (5, N'Simon & Schuster', N'9349 35th Ave.', N'Kansas City', N'MO', 10564)
GO
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO




SET IDENTITY_INSERT [dbo].[Book] ON 
GO
INSERT [dbo].[Book] ([BookID], [Title], [Description], [Price], [IsPaperBack], [PublishDate], [AuthorID_FK], [GenreID_FK], [PublisherID_FK]) VALUES (1, N'Dancing with Jesus: Featuring a Host of Miraculous Moves', N'Are you cursed with two left feet? Are your dance moves unrighteous? Do you refrain from getting down lest others judge you cruelly? Fear not. Salvation is at hand.', 12.9500, 0, CAST(N'1986-12-01T00:00:00.000' AS DateTime), 1, 1, 4)
GO
INSERT [dbo].[Book] ([BookID], [Title], [Description], [Price], [IsPaperBack], [PublishDate], [AuthorID_FK], [GenreID_FK], [PublisherID_FK]) VALUES (2, N'Roughing It', N'Roughing It (1872) is Twain’s second book, a comedic romp through the Wild West with hilarious sketches of the author’s misadventures. The book recounts Twain’s flight from Hannibal to the silver mines of Nevada at the outset of the Civil War. ', 21.0000, 1, CAST(N'1865-04-15T00:00:00.000' AS DateTime), 5, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[Book] OFF
GO


