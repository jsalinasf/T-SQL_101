-- Create a Table
-- Create a column used as a PRIMARY KEY
-- Create a second column which does not allow null values
CREATE TABLE [dbo].[Books](   
	ISBN varchar(13) PRIMARY KEY,
	TITLE varchar(100) NOT NULL
)