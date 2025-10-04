create table if not exists clientes (
    id serial primary key,
    nombre varchar(100) not null,
    email varchar(100),
    fecha_registro date default current_date
);

insert into clientes (nombre, email) values ('luis Zanches  ', 'luisz@gmail.com');
insert into clientes (nombre, email) values ('cristina delgado', 'crisd@gmail.com');
