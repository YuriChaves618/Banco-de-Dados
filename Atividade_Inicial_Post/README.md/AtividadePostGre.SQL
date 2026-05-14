
create table obra (

  id_obra SERIAL PRIMARY KEY,
  codigo_obra VARCHAR(10) NOT NULL, 
  nome_obra VARCHAR(200) NOT NULL,
  fator_k NUMERIC(5,4) NOT NULL,
  bdi NUMERIC(6,4) NOT NULL

); 

create table item(
  
  id_item SERIAL PRIMARY KEY,
  codigo_item VARCHAR(20) NOT NULL,
  descricao VARCHAR(300) NOT NULL,
  unidade VARCHAR(5) NOT NULL,
  preco_unitario NUMERIC(15,2) NOT NULL
  
  );
  
  create table item_orcado(
    
    id_orcado SERIAL PRIMARY KEY,
    id_obra INTEGER NOT NULL REFERENCES obra(id_obra),
    id_item INTEGER NOT NULL REFERENCES item(id_item),
    quantidade NUMERIC(15,4) NOT NULL DEFAULT 0,
    preco_final NUMERIC(15,2) 
    
 );

INSERT INTO obra (codigo_obra, nome_obra, fator_k, bdi)
VALUES
('00000D',
'MANUT.ELET.PREV.E COR. MED/BAIXA TENS NA CAP.E INT - REG.1 E 3 - LOTE 02',
0.7600, 0.2404),
('11111A',
'CCO - CADASTRO GERAL SINAPI',
0.7600, 0.2404),
('22222B',
'MANUTENCAO PREVENTIVA E CORRETIVA DE PREDIOS PUBLICOS, DO DETRAN - LOTE 2',
0.7600, 0.2404);

SELECT * FROM obra;

INSERT INTO item (codigo_item, descricao, unidade, preco_unitario)
VALUES
('27-01-01-001 O',
'ADMINISTRACAO LOCAL PARA O.S. ATE R$ 1.000,00',
'UN', 251.98),
('27-01-01-006 O',
'ADMINISTRACAO LOCAL PARA O.S. DE R$ 5.000,01 A R$ 10.000,00',

'UN', 2081.60),
('27-01-01-013 O',
'DESLOCAMENTO PARA CAMINHAO CARROCERIA, INCLUSIVE MOTORISTA E COMBUSTIVEL',
'KM', 5.74),
('02-01-01-300 O',
'ADICIONAL HORA EXTRA DOMINGOS/FERIADOS 110% - PEDREIRO CS:88309',
'H', 30.45),
('02-01-01-301 O',
'ADICIONAL HORA EXTRA DOMINGOS/FERIADOS 110% - AJUDANTE ESPECIALIZADO
CS:88243',
'H', 22.54);
SELECT * FROM item;

SELECT item, descricao FROM item WHERE unidade = 'H';

INSERT INTO item_orcado (id_obra, id_item, quantidade, preco_final)
VALUES
-- obra 00000D (id_obra=1), fator_k=0.76
(1, 1, 5.00, 191.50), -- adm local ate 1000, 5 OS x 251.98 x 0.76
(1, 3, 120.00, 4.36), -- deslocamento 120 km x 5.74 x 0.76
(1, 4, 8.00, 23.14), -- hora extra domingo pedreiro x 30.45 x 0.76
-- obra 11111A (id_obra=2), fator_k=0.76
(2, 2, 3.00, 1582.02), -- adm local 5001-10000, 3 OS x 2081.60 x 0.76
(2, 5, 10.00, 17.13), -- hora extra domingo ajudante x 22.54 x 0.76
-- obra 22222B (id_obra=3), fator_k=0.76
(3, 1, 2.00, 191.50), -- adm local ate 1000, 2 OS
(3, 4, 20.00, 23.14); -- hora extra domingo pedreiro
SELECT * FROM item_orcado;

SELECT
o.codigo_obra,
o.nome_obra,
o.fator_k,
i.codigo_item,
i.descricao,
i.unidade,
i.preco_unitario,
io.quantidade,
io.preco_final,
ROUND(io.quantidade * io.preco_final, 2) AS total_item
FROM item_orcado io
INNER JOIN obra o ON io.id_obra = o.id_obra
INNER JOIN item i ON io.id_item = i.id_item
where o.codigo_obra = '00000D'
ORDER BY o.codigo_obra, i.codigo_item;

SELECT
o.codigo_obra,
o.nome_obra,
o.fator_k,
o.bdi,
COUNT(io.id_orcado) AS qtd_itens,
SUM(io.quantidade * io.preco_final) AS valor_total_k,
ROUND(
SUM(io.quantidade * io.preco_final)
* (1 + o.bdi), 2
) AS valor_com_bdi
FROM item_orcado io
INNER JOIN obra o ON io.id_obra = o.id_obra
INNER JOIN item i ON io.id_item = i.id_item WHERE i.unidade = 'H'
GROUP BY o.id_obra, o.codigo_obra, o.nome_obra, o.fator_k, o.bdi
ORDER BY valor_com_bdi DESC;




