USE master; 
GO 
CREATE DATABASE Security_review 
ON  
( NAME = Security_review_data, 
FILENAME = 'E:\SQLDATA\Security_review_data.mdf', 
    SIZE = 100MB, 
    MAXSIZE = 5000MB, 
    FILEGROWTH = 50MB ) 
LOG ON 
( NAME = Security_review_log, 
    FILENAME = 'E:\SQLLOG\Security_review_log.ldf', 
    SIZE = 100MB, 
    MAXSIZE = 10000MB, 
    FILEGROWTH = 50MB );