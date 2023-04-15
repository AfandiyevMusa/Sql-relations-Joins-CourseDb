create table Category(
    [Id] int primary key IDENTITY(1,1),
    [Name] NVARCHAR(50) not null
)

create table Product(
    [Id] int primary key IDENTITY(1,1),
    [Name] NVARCHAR(50) not null,
    [Count] int,
    [Price] int,
    [CategoryId] int FOREIGN KEY REFERENCES Category(Id)
)

select * from Product
select * from Category


-- task1
select * from Category
inner join Product 
on Category.id = Product.CategoryId

select * from Category
left join Product 
on Category.id = Product.CategoryId

select * from Category
right join Product 
on Category.id = Product.CategoryId

select * from Category
full outer join Product 
on Category.id = Product.CategoryId

-- task2
create table Users(
    [Id] int primary key IDENTITY(1,1),
    [Name] NVARCHAR(50) not null,
    [Surname] NVARCHAR(50) not null
)

create table Roles ( 
    [Id] int primary key IDENTITY(1,1),
    [Name] NVARCHAR(50) not null
)

create table UserRoles(
    [Id] int primary key IDENTITY(1,1),
    [RoleId] int FOREIGN KEY REFERENCES Roles(Id),
    [UserId] int FOREIGN KEY REFERENCES Users(Id)
)

select * from Users
select * from Roles
select * from UserRoles

select * from Users
inner join UserRoles
on Users.Id = UserRoles.RoleId

select * from Users
left join UserRoles 
on Users.Id = UserRoles.RoleId

select * from Users
right join UserRoles 
on Users.Id = UserRoles.RoleId

select * from Users
full outer join UserRoles 
on Users.Id = UserRoles.RoleId