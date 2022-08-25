USE db_teste;
SELECT *
FROM dbo.usuarios;
BEGIN TRAN;
insert into 
dbo.usuarios (nome,senha,ativo) 
values('UsuarioTeste1','SenhaTeste',1);
--COMMIT;

SELECT @@IDENTITY As id
