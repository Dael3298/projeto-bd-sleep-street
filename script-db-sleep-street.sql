CREATE TABLE estabelecimento_favorito(
 id_favorito SERIAL PRIMARY KEY,
 id_usuario int not null,
 id_estabelecimento int not null,
 data_adicao timestamp
);


SELECT * FROM estabelecimento_favorito;


INSERT INTO estabelecimento_favorito (id_estabelecimento,id_usuario) values ('123','635');

delete from estabelecimento_favorito