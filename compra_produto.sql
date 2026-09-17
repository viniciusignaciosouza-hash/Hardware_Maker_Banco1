CREATE TABLE compra_produto (
    id_compra_produto BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10, 2) NOT NULL,
    id_compra BIGINT NOT NULL,
    id_produto BIGINT NOT NULL,

    CONSTRAINT fk_compra_produto_compra FOREIGN KEY (id_compra) REFERENCES compra(id_compra),
    CONSTRAINT fk_compra_produto_produto FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

