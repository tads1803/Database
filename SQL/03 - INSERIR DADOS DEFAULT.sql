-- Inserção dos Tipos de Container
INSERT INTO tb_tipo_container (va_nome) VALUES (20);
INSERT INTO tb_tipo_container (va_nome) VALUES (40);

-- Inserção dos Status de Container
INSERT INTO tb_status_container (va_nome) VALUES ('Cheio');
INSERT INTO tb_status_container (va_nome) VALUES ('Vazio');

--Inserção das Categorias de Container
INSERT INTO tb_categoria_container (va_nome) VALUES ('Importação');
INSERT INTO tb_categoria_container (va_nome) VALUES ('Exportação');

--Inserção dos Tipos de Movimentações
INSERT INTO tb_tipo_movimentacao (va_nome) VALUES ('Embarque');
INSERT INTO tb_tipo_movimentacao (va_nome) VALUES ('Descarga');
INSERT INTO tb_tipo_movimentacao (va_nome) VALUES ('Gate In');
INSERT INTO tb_tipo_movimentacao (va_nome) VALUES ('Gate Out');
INSERT INTO tb_tipo_movimentacao (va_nome) VALUES ('Reposicionamento');
INSERT INTO tb_tipo_movimentacao (va_nome) VALUES ('Pesagem');
INSERT INTO tb_tipo_movimentacao (va_nome) VALUES ('Scanner');