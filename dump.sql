GRANT ALL PRIVILEGES ON DATABASE cadastro TO postgres;

insert into tab_usuarios(id, login, senha)
    values(1, 'gabriel', '123'),
          (2, 'adriana', '456'),
          (3, 'david', '789'),
          (4, 'jorge', '101112');
