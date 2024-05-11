-- Criação das tabelas
CREATE TABLE assemblers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    registration VARCHAR(255),
    full_name VARCHAR(255),
    birthday DATE,
    line VARCHAR(255),
    document VARCHAR(255)
);

CREATE TABLE manuals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    category VARCHAR(255)
);

CREATE TABLE file (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(255),
    URL TEXT,
    id_manuals INT,
    FOREIGN KEY (id_manuals) REFERENCES manuals(id)
);

-- Tabela intermediária para relacionamento N:N
CREATE TABLE assemblers_manuals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_assemblers INT,
    id_manuals INT,
    FOREIGN KEY (id_assemblers) REFERENCES assemblers(id),
    FOREIGN KEY (id_manuals) REFERENCES manuals(id)
);
