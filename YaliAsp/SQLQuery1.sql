CREATE TABLE [dbo].[usersTbl]
(
    [uName] NVARCHAR(30) NOT NULL, 
    [fName] NVARCHAR(15) NOT NULL, 
    [lName] NVARCHAR(20) NOT NULL, 
    [email] NVARCHAR(50) NOT NULL, 
    [gender] NVARCHAR(6) NOT NULL, 
    [city] NVARCHAR(30) NOT NULL, 
    [yearBorn] INT NOT NULL, 
    [prefix] NVARCHAR(3) NOT NULL, 
    [phone] NCHAR(7) NOT NULL, 
    [hob1] NCHAR(1) NOT NULL, 
    [hob2] NCHAR(1) NOT NULL, 
    [hob3] NCHAR(1) NOT NULL, 
    [hob4] NCHAR(1) NOT NULL, 
    [hob5] NCHAR(1) NOT NULL, 
    [pw] NVARCHAR(15) NOT NULL, 
    CONSTRAINT [PK_usersTbl] PRIMARY KEY ([uName])
)
