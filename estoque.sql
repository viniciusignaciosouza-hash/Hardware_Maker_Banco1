CREATE TABLE estoque (
    id_estoque BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    quantidade INT,
    id_produto BIGINT NOT NULL,

    CONSTRAINT fk_estoque_produto FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

