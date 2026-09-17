CREATE TABLE carrinho (
    id_carrinho BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    id_cliente BIGINT NOT NULL,
    id_produto BIGINT NOT NULL,

    CONSTRAINT fk_carrinho_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    CONSTRAINT fk_carrinho_produto FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

