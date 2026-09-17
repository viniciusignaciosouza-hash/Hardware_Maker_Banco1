CREATE TABLE pagamento (
    id_pagamento BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    forma_pagamento VARCHAR(50) NOT NULL,
    valor_pago DECIMAL(10, 2) NOT NULL,
    status_pagamento VARCHAR(50) NOT NULL,
    id_compra BIGINT NOT NULL,

    CONSTRAINT fk_pagamento_compra FOREIGN KEY (id_compra) REFERENCES compra(id_compra)
);
