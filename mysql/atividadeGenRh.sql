create schema db_rh;

use db_rh;

CREATE TABLE tb_colaboradores (
  id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  cargo VARCHAR(50) NOT NULL,
  salario DECIMAL(10,2) NOT NULL,
  data_admissao DATE NOT NULL
);

INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao) VALUES
  ('Ana Silva', 'Analista de Dados', 2500.00, '2023-01-02'),
  ('João Oliveira', 'Desenvolvedor de Software', 3200.50, '2022-06-15'),
  ('Maria Cardoso', 'Gerente de Projetos', 4100.00, '2021-03-09'),
  ('Pedro Souza', 'Assistente Administrativo', 1800.00, '2024-04-20'),
  ('Bruna Santos', 'Estagiária de Marketing', 1200.00, '2024-07-10');
  
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores
SET salario = 2700.00, cargo = 'Analista Senior de Dados'
WHERE id_colaborador = 1;





