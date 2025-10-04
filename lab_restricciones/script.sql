create table if not exists productos(
    id serial primary key,
    sku varchar(30) unique,
    nombre varchar(150) not null,
    precio numeric(12,2) check (precio >= 0),
    stock int not null default 0 check (stock >= 0)
);

create table if not exists pedidos(
    id serial primary key,
    clientes_id int references clientes(id),
    total numeric(12,2) not null check (total >= 0),
    fecha timestamp not null default now()
);

insert into productos (sku, nombre, precio, stock)
values 
    ('A-100', 'Teclado', 120000, 10),
    ('B-200', 'Mouse', 50000, 20);

insert into pedidos (clientes_id, total)
values (1, 120000),(1, 50000);
