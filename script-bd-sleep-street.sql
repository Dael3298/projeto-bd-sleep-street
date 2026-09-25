CREATE TABLE estabelecimento_favorito(
 id_favorito SERIAL PRIMARY KEY,
 id_usuario int not null,
 id_estabelecimento int not null,
 data_adicao timestamp
);

CREATE TABLE estabelecimento(
  id_estabelecimento SERIAL PRIMARY KEY,
  nome varchar(150) note null,
  categoria categoria_estabelecimento_enum varchar note null,
  faixa_preco faixa_preco_enum varchar note null,
  avaliacao_media decimal(3,2),
  latitude decimal(10,8) note null,
  longitude decimal(11,8) note null,
  horario_abertura time,
  horario_fechamento time,
  ativo boolean
)

SELECT * FROM estabelecimento;

SELECT * FROM estabelecimento_favorito;

INSERT INTO estabelecimento (nome, categoria, faixa_preco, avaliação_media, latitude, longitude, horario_abertura, horario_fechamento);

INSERT INTO estabelecimento_favorito (id_estabelecimento,id_usuario) values ('123','635');

delete from estabelecimento_favorito