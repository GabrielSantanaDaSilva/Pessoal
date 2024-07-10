create schema db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classes (
  id_classe INT PRIMARY KEY AUTO_INCREMENT,
  nome_classe VARCHAR(50) NOT NULL,
  descricao_classe TEXT
);

CREATE TABLE tb_personagens (
  id_personagem INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  poder_ataque INT NOT NULL,
  poder_defesa INT NOT NULL,
  id_classe INT NOT NULL,
  FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_classes (nome_classe, descricao_classe) VALUES
  ('Mago', 'Mestres das artes arcanas, conjurando poderosos feitiços'),
  ('Guerreiro', 'Combatentes corpo-a-corpo, peritos em armas e armaduras'),
  ('Arqueiro', 'Especialistas em ataques à distância com precisão mortal'),
  ('assasino', 'Agentes furtivos e mortais, mestres em emboscadas e assassinatos'),
  ('Curandeiro', 'Suporte vital para o grupo, curando aliados e enfraquecendo inimigos');
  
  INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES
  ('Alyndra', 2500, 1500, 1),
  ('Ragnar', 2800, 1800, 2),
  ('Elara', 2100, 1200, 3),
  ('Kael', 2300, 1600, 4),
  ('Serena', 1900, 2000, 5),
  ('Morgana', 2700, 1400, 1),
  ('Darius', 2600, 1700, 2),
  ('Aella', 2000, 1300, 3);
  
  SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
  
  SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.*, c.nome_classe
FROM tb_personagens AS p
INNER JOIN tb_classes AS c ON p.id_classe = c.id_classe;

SELECT p.*, c.nome_classe
FROM tb_personagens AS p
INNER JOIN tb_classes AS c ON p.id_classe = c.id_classe
WHERE c.nome_classe = 'Arqueiro';





