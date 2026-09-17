CREATE TABLE endereco (
    id_endereco BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    logradouro VARCHAR(255) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    cep VARCHAR(9) NOT NULL,
    id_cliente BIGINT NOT NULL,

    CONSTRAINT fk_endereco_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

