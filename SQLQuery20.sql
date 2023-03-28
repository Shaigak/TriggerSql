use Company

--create view GetCustomerById
--as
--select * from Employees where Id=1

--select * from GetCustomerById




--create function SayHelloWorld()

--returns nvarchar(50)

--as

--BEGIN

--return 'Hello World'

--END

--select dbo.SayHelloWorld()



--create function dbo.writeWord(@word nvarchar(20))

--returns nvarchar(50)

--as

--BEGIN

--return @word

--END

--declare @word nvarchar(20)='Saiq'

--select dbo.writeWord (@word)


--create function dbo.writeWords(@word nvarchar(20),@source nvarchar(20))

--returns nvarchar(50)

--as

--BEGIN

--return @word+@source

--END

--select dbo.writeWords ('Saiq' , 'Kazimov')



--create function dbo.sumofNumbers(@num1 int,@num2 int)

--returns int

--as

--BEGIN

--return @num1+@num2

--END

--select dbo.sumofNumbers (5,10)


--create function dbo.GetCustomerCount()

--returns int  

--as

--BEGIN

--declare @count int

--select @count= AVG(Age) from Employees

--return @count

--END

--select dbo.GetCustomerCount()



--create function dbo.GetCustomerAvgAge()

--returns int  

--as

--BEGIN

--declare @count int

--select @count= AVG(Age) from Employees

--return @count

--END

--select dbo.GetCustomerAvgAge()



--create function dbo.getCustomerAvarageAgeById(@id int)
--returns int 
--as 

--BEGIN

--declare @avgAge int

--select  @avgAge=AVG(AGE)from Employees where Id>@id

--return @avgAge

--END

--select dbo.getCustomerAvarageAgeById(3)



--create procedure usp_SayHelloWorld
--as
--Begin

--print 'Hello World'

--END

--exec usp_SayHelloWorld


--create procedure usp_sumofNums
--@num1 int,
--@num2 int
--as

--BEGIN
--print @num1 + @num2
--END


--exec usp_sumofNums 5,10



--create procedure usp_addCustomer
--@Name nvarchar(50),
--@Surname nvarchar(50),
--@Age int 

--as

--BEGIN

--insert into Employees([Name],[Surname],[Age])
--values ( @Name,@Surname,@Age)

--END

--exec usp_addCustomer 'Saiqs', 'Kazimov', 25


--create procedure usp_deleteUser

--@id int 

--as 


--Begin

--delete from Employees where Id=@id

--End


-- exec usp_deleteUser 8
 

 --create table UserLogs(
 
 --[Id] int primary key identity(1,1),
 --[UserID] int ,
 --[Operation] nvarchar(10),
 --[Date] datetime
 --)

 --create trigger trg_insertUser on Employees

 --after insert 

 --as

 --BEGIN

 --insert into UserLogs([UserId],[Operation],[Date])
 --select Id,'Insert',Getdate() from inserted
 --END


 --create procedure usp_insertUsers

 --@name nvarchar(50),
 --@age int,
 --@Surname nvarchar(50)

 --as
 --Begin 

 --insert into Employees([Name],[Age],[Surname])
 --values (@name ,@age,@Surname)


 --END

 --exec usp_insertUsers 'Ceyhun' ,22,'Ezizli'





 --create trigger trg_deleteUser on Employees

 --after delete 
 --as

 --BEGIN

 --insert into UserLogs([UserId],[Operation],[Date])
 --select Id,'Insert',Getdate() from deleted
 --END

 --delete from Employees where Id=9




 --create trigger trg_updateUser on Employees

 --after update
 --as

 --BEGIN

 --insert into UserLogs([UserId],[Operation],[Date])
 --select Id,'Update',Getdate() from deleted
 --END



 --update Employees
 --set [Age]=30 where Id=6


 select * from UserLogs where UserId=6