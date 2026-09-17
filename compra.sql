CREATE TABLE compra (
    id_compra BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    data_compra TIMESTAMP,
    valor_total DECIMAL(10, 2) NOT NULL,
    id_cliente BIGINT NOT NULL,
    id_endereco BIGINT NOT NULL,

    CONSTRAINT fk_compra_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    CONSTRAINT fk_compra_endereco FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco)
);

