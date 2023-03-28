use Course

create table Students(
[Id] int primary key identity(1,1),
[Name] nvarchar(50) not null,
[Surname] nvarchar(50) not null, 
[Age] int ,
[Email] nvarchar(50),
[Address] nvarchar(50)

)

insert into Students([Name],[Surname],[Age], [Email],[Address] )
values ('Saiq' , 'Kazimov',25,'saiq@code.edu.az','Sedmoy'),
       ('Aqsin' , 'Hummetov',27,'aqsin@code.edu.az','Xirdalan'),
	   ('Cavid' , 'Ismayilzade',23,'cavid@code.edu.az','Hokmeli'),
	   ('Elekber' , 'Hesenov',21,'elekber@code.edu.az','Bayil'),
	   ('Konul' , 'Ibrahimova',27,'konul@code.edu.az','Neftciler'),
	   ('Roya' , 'Meherremova',27,'roya@code.edu.az','Sumqayit'),
	   ('Cinare' , 'Ibadova',22,'cinare@code.edu.az','Lokbatan')


 create table StudentArchives (
 
 [Id] int primary key identity (1,1),
 [StudenId] int ,
 [Operation] nvarchar(10),
 [Date] datetime
 )

create trigger trg_insertStudent on Students
after delete 
as

BEGIN

insert into StudentArchives([StudenId],[Operation],[Date])
select Id, 'Delete' , GETDATE() from deleted

END


create procedure usp_deleteUser
@id int 
as

Begin
delete from Students where Id=@id
End

exec usp_deleteUser 7

select * from StudentArchives