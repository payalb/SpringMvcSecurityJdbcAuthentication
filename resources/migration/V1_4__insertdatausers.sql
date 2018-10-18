insert into users ( username, password)
values ( 'payal', '$2a$12$YcoYj8Si2mbx.gYTLWwPeu51cfI2bTJlWBnnpaI2uYitfQtKzjPxm');

insert into users ( username, password)
values ( 'admin', '$2a$12$vhk1ELFdkwuvtAb8HrnUzOHEGJsnqX5ZX.C3TV3Q4Vuu9dsDcRH8e');

insert into roles ( username, authority)
values (  'payal', 'ROLE_USER');

insert into roles ( username, authority)
values ( 'admin', 'ROLE_ADMIN');

