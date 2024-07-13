-- Inserting 5 entries for Movie
INSERT INTO Movie (MovieID, DistributorMovieID, NumberOfCopies, Title, Type, RunningLength, Rating, YearReleased)
VALUES (1, 101, 10, 'The Great Adventure', 'Action', INTERVAL '2' HOUR + INTERVAL '30' MINUTE, 'PG-13', 2020);

INSERT INTO Movie (MovieID, DistributorMovieID, NumberOfCopies, Title, Type, RunningLength, Rating, YearReleased)
VALUES (2, 102, 15, 'Love in Paris', 'Romance', INTERVAL '1' HOUR + INTERVAL '45' MINUTE, 'PG', 2019);

INSERT INTO Movie (MovieID, DistributorMovieID, NumberOfCopies, Title, Type, RunningLength, Rating, YearReleased)
VALUES (3, 103, 5, 'Mysteries Unfold', 'Thriller', INTERVAL '2' HOUR + INTERVAL '10' MINUTE, 'R', 2021);

INSERT INTO Movie (MovieID, DistributorMovieID, NumberOfCopies, Title, Type, RunningLength, Rating, YearReleased)
VALUES (4, 104, 20, 'Galactic Wars', 'Sci-Fi', INTERVAL '2' HOUR + INTERVAL '50' MINUTE, 'PG-13', 2022);

INSERT INTO Movie (MovieID, DistributorMovieID, NumberOfCopies, Title, Type, RunningLength, Rating, YearReleased)
VALUES (5, 105, 8, 'Comedy Nights', 'Comedy', INTERVAL '1' HOUR + INTERVAL '30' MINUTE, 'PG', 2018);

-- Inserting 5 entries for Format
INSERT INTO Format (FormatID, PurchaseCost)
VALUES (1, 19.99); -- Blu-ray

INSERT INTO Format (FormatID, PurchaseCost)
VALUES (2, 14.99); -- DVD

INSERT INTO Format (FormatID, PurchaseCost)
VALUES (3, 9.99);  -- VHS

INSERT INTO Format (FormatID, PurchaseCost)
VALUES (4, 4.99);  -- Digital SD

INSERT INTO Format (FormatID, PurchaseCost)
VALUES (5, 7.99);  -- Digital HD

-- Inserting 5 entries for Distributor
INSERT INTO Distributor (DistributorID, Name, TypeOfMovies, ElectronicCatalog)
VALUES (1, 'Warner Bros', 'Action', 'https://warnerbros.com/movies');

INSERT INTO Distributor (DistributorID, Name, TypeOfMovies, ElectronicCatalog)
VALUES (2, 'Universal Pictures', 'Drama', 'https://universalpictures.com/movies');

INSERT INTO Distributor (DistributorID, Name, TypeOfMovies, ElectronicCatalog)
VALUES (3, 'Disney Studios', 'Animation', 'https://disneystudios.com/movies');

INSERT INTO Distributor (DistributorID, Name, TypeOfMovies, ElectronicCatalog)
VALUES (4, '20th Century Studios', 'Sci-Fi', 'https://20thcenturystudios.com/movies');

INSERT INTO Distributor (DistributorID, Name, TypeOfMovies, ElectronicCatalog)
VALUES (5, 'Lionsgate Films', 'Thriller', 'https://lionsgatefilms.com/movies');

-- Inserting 5 entries for Inventory
INSERT INTO Inventory (InventoryID, DistributorSerialNumber, MovieID, FormatID, PurchasePrice, RentalStatus, RentalDate, ReturnDate, DistributorID)
VALUES (1, 10001, 1, 1, 15.99, 'Available', NULL, NULL, 1);

INSERT INTO Inventory (InventoryID, DistributorSerialNumber, MovieID, FormatID, PurchasePrice, RentalStatus, RentalDate, ReturnDate, DistributorID)
VALUES (2, 10002, 2, 2, 12.99, 'Rented', DATE '2023-09-20', DATE '2023-09-27', 2);

INSERT INTO Inventory (InventoryID, DistributorSerialNumber, MovieID, FormatID, PurchasePrice, RentalStatus, RentalDate, ReturnDate, DistributorID)
VALUES (3, 10003, 3, 3, 9.99, 'Available', NULL, NULL, 3);

INSERT INTO Inventory (InventoryID, DistributorSerialNumber, MovieID, FormatID, PurchasePrice, RentalStatus, RentalDate, ReturnDate, DistributorID)
VALUES (4, 10004, 4, 1, 18.99, 'Rented', DATE '2023-09-15', DATE '2023-09-25', 4);

INSERT INTO Inventory (InventoryID, DistributorSerialNumber, MovieID, FormatID, PurchasePrice, RentalStatus, RentalDate, ReturnDate, DistributorID)
VALUES (5, 10005, 5, 2, 11.99, 'Available', NULL, NULL, 5);

-- Inserting 5 entries for Customer
INSERT INTO Customer (CustomerID, Name, Address, TelephoneNumber)
VALUES (1, 'John Doe', '123 Elm St, Springfield, IL', '1234567890');

INSERT INTO Customer (CustomerID, Name, Address, TelephoneNumber)
VALUES (2, 'Jane Smith', '456 Oak Dr, Shelbyville, IL', '0987654321');

INSERT INTO Customer (CustomerID, Name, Address, TelephoneNumber)
VALUES (3, 'Alice Johnson', '789 Maple Ln, Capital City, IL', '1122334455');

INSERT INTO Customer (CustomerID, Name, Address, TelephoneNumber)
VALUES (4, 'Bob Brown', '321 Pine St, Ogdenville, IL', '2233445566');

INSERT INTO Customer (CustomerID, Name, Address, TelephoneNumber)
VALUES (5, 'Charlie Green', '654 Cedar Ave, North Haverbrook, IL', '3344556677');

-- Inserting 5 entries for RentalTransaction
INSERT INTO RentalTransaction (RentalTransactionID, CustomerID, InventoryID, RentalDate, ReturnDate, LateFee, DamagedFee, RewindFee, Tax, Discount, TotalAmount)
VALUES (1, 1, 1, DATE '2023-09-01', DATE '2023-09-08', 0, 0, 0, 1.5, 0, 16.49);

INSERT INTO RentalTransaction (RentalTransactionID, CustomerID, InventoryID, RentalDate, ReturnDate, LateFee, DamagedFee, RewindFee, Tax, Discount, TotalAmount)
VALUES (2, 2, 3, DATE '2023-09-03', DATE '2023-09-10', 2.5, 0, 0.5, 1.5, 0, 14.49);

INSERT INTO RentalTransaction (RentalTransactionID, CustomerID, InventoryID, RentalDate, ReturnDate, LateFee, DamagedFee, RewindFee, Tax, Discount, TotalAmount)
VALUES (3, 3, 5, DATE '2023-09-05', DATE '2023-09-12', 0, 5, 0, 1.5, 2, 15.99);

INSERT INTO RentalTransaction (RentalTransactionID, CustomerID, InventoryID, RentalDate, ReturnDate, LateFee, DamagedFee, RewindFee, Tax, Discount, TotalAmount)
VALUES (4, 4, 2, DATE '2023-09-06', DATE '2023-09-13', 0, 0, 0, 1.5, 1, 13.49);

INSERT INTO RentalTransaction (RentalTransactionID, CustomerID, InventoryID, RentalDate, ReturnDate, LateFee, DamagedFee, RewindFee, Tax, Discount, TotalAmount)
VALUES (5, 5, 4, DATE '2023-09-08', DATE '2023-09-15', 0, 0, 0.5, 1.5, 0, 14.49);

-- Inserting 5 entries for ActorActress 
INSERT INTO ActorActress (ActorActressID, Name)
VALUES (1, 'Robert Downey Jr.');

INSERT INTO ActorActress (ActorActressID, Name)
VALUES (2, 'Scarlett Johansson');

INSERT INTO ActorActress (ActorActressID, Name)
VALUES (3, 'Tom Holland');

INSERT INTO ActorActress (ActorActressID, Name)
VALUES (4, 'Jennifer Lawrence');

INSERT INTO ActorActress (ActorActressID, Name)
VALUES (5, 'Will Smith');

-- Inserting 5 entries for Director
INSERT INTO Director (DirectorID, Name)
VALUES (1, 'Christopher Nolan');

INSERT INTO Director (DirectorID, Name)
VALUES (2, 'Quentin Tarantino');

INSERT INTO Director (DirectorID, Name)
VALUES (3, 'Kathryn Bigelow');

INSERT INTO Director (DirectorID, Name)
VALUES (4, 'Spike Lee');

INSERT INTO Director (DirectorID, Name)
VALUES (5, 'Greta Gerwig');

-- Inserting 5 entries for AcademyAward
INSERT INTO AcademyAward (AcademyAwardID, Category, Winner, Year)
VALUES (1, 'Best Actor', 'Robert Downey Jr.', 2016);

INSERT INTO AcademyAward (AcademyAwardID, Category, Winner, Year)
VALUES (2, 'Best Director', 'Quentin Tarantino', 2020);

INSERT INTO AcademyAward (AcademyAwardID, Category, Winner, Year)
VALUES (3, 'Best Picture', 'The Great Adventure', 2020);

INSERT INTO AcademyAward (AcademyAwardID, Category, Winner, Year)
VALUES (4, 'Best Actress', 'Scarlett Johansson', 2021);

INSERT INTO AcademyAward (AcademyAwardID, Category, Winner, Year)
VALUES (5, 'Best Laugh', 'Comedy Nights', 2019);

-- Inserting 5 entries for ActorMovieAssociation
INSERT INTO ActorMovieAssociation (AssociationID, ActorActressID, MovieID)
VALUES (1, 2, 3); -- Linking Scarlett Johansson to 'Mysteries Unfold'

INSERT INTO ActorMovieAssociation (AssociationID, ActorActressID, MovieID)
VALUES (2, 3, 4); -- Linking Tom Holland to 'Galactic Wars'

INSERT INTO ActorMovieAssociation (AssociationID, ActorActressID, MovieID)
VALUES (3, 4, 5); -- Linking Jennifer Lawrence to 'Comedy Nights'

INSERT INTO ActorMovieAssociation (AssociationID, ActorActressID, MovieID)
VALUES (4, 5, 1); -- Linking Will Smith to 'The Great Adventure'

INSERT INTO ActorMovieAssociation (AssociationID, ActorActressID, MovieID)
VALUES (5, 1, 2); -- Linking Robert Downey Jr. to 'Love in Paris'

-- Inserting 5 entries for MovieDirectorAssociation
INSERT INTO MovieDirectorAssociation (AssociationID, MovieID, DirectorID)
VALUES (1, 1, 1); -- Linking 'The Great Adventure' to Christopher Nolan

INSERT INTO MovieDirectorAssociation (AssociationID, MovieID, DirectorID)
VALUES (2, 2, 2); -- Linking 'Love in Paris' to Quentin Tarantino

INSERT INTO MovieDirectorAssociation (AssociationID, MovieID, DirectorID)
VALUES (3, 3, 3); -- Linking 'Mysteries Unfold' to Kathryn Bigelow

INSERT INTO MovieDirectorAssociation (AssociationID, MovieID, DirectorID)
VALUES (4, 4, 4); -- Linking 'Galactic Wars' to Spike Lee

INSERT INTO MovieDirectorAssociation (AssociationID, MovieID, DirectorID)
VALUES (5, 5, 5); -- Linking 'Comedy Nights' to Greta Gerwig
