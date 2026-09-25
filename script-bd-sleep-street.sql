CREATE TABLE estabelecimento_favorito(
 id_favorito SERIAL PRIMARY KEY,
 id_usuario int not null,
 id_estabelecimento int not null,
 data_adicao timestamp
);

CREATE TABLE estabelecimento(
  id_estabelecimento SERIAL PRIMARY KEY,
  nome varchar(150) note null,
  categoria categoria_estabelecimento_enum varchar not null,
  faixa_preco faixa_preco_enum varchar not null,
  avaliacao_media decimal(3,2),
  latitude decimal(10,8) not null,
  longitude decimal(11,8) not null,
  horario_abertura time,
  horario_fechamento time,
  ativo boolean
);

CREATE TABLE despesa_viagem(
  id_despesa SERIAL PRIMARY KEY,
  id_viagem int not null,
  categoria categoria_despesa_enum varchar not null,
  descricao varchar(150) not null,
  valor_despesa decimal(10,2) not null,
  data_despesa timestamp
);

CREATE TABLE historico_status_reembolso(
  id_historico SERIAL PRIMARY KEY,
  id_reembolso int not null,
  status_anterior status_reembolso_enum varchar,
  status_novo status_reembolso_enum varchar not null,
  observacao_moderador text,
  id_modificador int not null,
  data_modificacao timestamp
);
