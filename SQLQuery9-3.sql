USE Security_review
CREATE TABLE dbo.SecurityReviewDetail 
( 
    SecurityReviewID int NOT NULL,
	LineNumber smallint NOT NULL, 
    HostID int NOT NULL,
	HostName varchar(20), 
    UserID int NOT NULL, 
	UserLogin varchar(20),
    SuccessLogins int NOT NULL,     
	FailedLogins int NOT NULL, 
    DueDate datetime NOT NULL, 
    rowguid uniqueidentifier ROWGUIDCOL  NOT NULL, 
        CONSTRAINT PK_SecurityReviewID 
               PRIMARY KEY CLUSTERED (SecurityReviewID) 
               WITH (IGNORE_DUP_KEY = OFF) 
)
CREATE TABLE dbo.Users
( 
    UserID int NOT NULL, 
	UserLogin varchar(20),
    rowguid uniqueidentifier ROWGUIDCOL  NOT NULL, 
        CONSTRAINT PK_UserID 
               PRIMARY KEY CLUSTERED (UserID) 
               WITH (IGNORE_DUP_KEY = OFF) 
)
CREATE TABLE dbo.Hosts
( 
    HostID int NOT NULL, 
	HostName varchar(20),
	HostSerialNumber int NOT NULL,
    rowguid uniqueidentifier ROWGUIDCOL  NOT NULL, 
        CONSTRAINT PK_HostID 
               PRIMARY KEY CLUSTERED (HostID) 
               WITH (IGNORE_DUP_KEY = OFF) 
)
CREATE TABLE dbo.Ivents
( 
    IventID int NOT NULL, 
	IventDescription varchar(200),
	rowguid uniqueidentifier ROWGUIDCOL  NOT NULL, 
        CONSTRAINT PK_IventID 
               PRIMARY KEY CLUSTERED (IventID) 
               WITH (IGNORE_DUP_KEY = OFF) 
)

;
