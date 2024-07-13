CREATE TABLE Movie (
    MovieID INTEGER PRIMARY KEY,
    DistributorMovieID INTEGER,
    NumberOfCopies INTEGER,
    Title VARCHAR(50),
    Type VARCHAR(50),
    RunningLength INTERVAL DAY TO SECOND,
    Rating VARCHAR(50),
    YearReleased INTEGER
);

CREATE TABLE Format (
    FormatID INTEGER PRIMARY KEY,
    PurchaseCost FLOAT
);

CREATE TABLE Distributor (
    DistributorID INTEGER PRIMARY KEY,
    Name VARCHAR(50),
    TypeOfMovies VARCHAR(50),
    ElectronicCatalog VARCHAR(50)
);

CREATE TABLE Inventory (
    InventoryID INTEGER PRIMARY KEY,
    DistributorSerialNumber INTEGER,
    MovieID INTEGER REFERENCES Movie(MovieID),
    FormatID INTEGER REFERENCES Format(FormatID),
    PurchasePrice FLOAT,
    RentalStatus CHAR(9),
    RentalDate DATE,
    ReturnDate DATE,
    DistributorID INTEGER REFERENCES Distributor(DistributorID)
);

CREATE TABLE Customer (
    CustomerID INTEGER PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(50),
    TelephoneNumber CHAR(10)
);

CREATE TABLE RentalTransaction (
    RentalTransactionID INTEGER PRIMARY KEY,
    CustomerID INTEGER REFERENCES Customer(CustomerID),
    InventoryID INTEGER REFERENCES Inventory(InventoryID),
    RentalDate DATE,
    ReturnDate DATE,
    LateFee FLOAT,
    DamagedFee FLOAT,
    RewindFee FLOAT,
    Tax FLOAT,
    Discount FLOAT,
    TotalAmount FLOAT
);

CREATE TABLE ActorActress (
    ActorActressID INTEGER PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Director (
    DirectorID INTEGER PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE AcademyAward (
    AcademyAwardID INTEGER PRIMARY KEY,
    Category VARCHAR(50),
    Winner VARCHAR(50),
    Year INTEGER
);

CREATE TABLE ActorMovieAssociation (
    AssociationID INTEGER PRIMARY KEY,
    ActorActressID INTEGER REFERENCES ActorActress(ActorActressID),
    MovieID INTEGER REFERENCES Movie(MovieID)
);

CREATE TABLE MovieDirectorAssociation (
    AssociationID INTEGER PRIMARY KEY,
    MovieID INTEGER REFERENCES Movie(MovieID),
    DirectorID INTEGER REFERENCES Director(DirectorID)
);
