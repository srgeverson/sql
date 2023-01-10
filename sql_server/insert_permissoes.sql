/************************************************************
 * Code formatted by SoftTree SQL Assistant � v11.0.35
 * Time: 20/06/2022 00:32:25
 ************************************************************/
 --SELECT * FROM sistemas AS s
 --SELECT * FROM permissoes;
 --DELETE FROM permissoes where id > 6;
--DESATIVAR IDENTITY TABELA
SET IDENTITY_INSERT permissoes ON

INSERT INTO permissoes (id, nome, descricao, sistema_id)
VALUES 
--(1, 'listar_permissao', 'Permite visualizar todas as permissões.', 1),
--(2, 'listar_usuario', 'Permite visualizar todos os usuários.', 1),
--(3, 'editar_usuario', 'Permite editar usuário.', 1),
--(4, 'cadastrar_usuario', 'Permite cadastrar usuário.', 1),
--(5, 'excluir_usuario', 'Permite excluir usuário.', 1),
--(6, 'proprio_usuario', 'Permite acesso aos recursos apenas do perfil do próprio usuário.', 1),
(7, 'listar_usuario', 'Permite visualizar todos os usuários.', 4),
(8, 'cadastrar_usuario', 'Permite cadastrar usuário.', 4)
;

--ATIVAR IDENTITY TABELA
SET IDENTITY_INSERT permissoes OFF

--SELECT * FROM usuarios_permissoes as up;
--SELECT * FROM usuarios AS u;
--DELETE FROM usuarios_permissoes;
INSERT INTO usuarios_permissoes
(usuario_id, permissao_id)
VALUES
--(1, 1),
--(1, 2),
--(1, 3),
--(1, 4),
--(1, 5),
--(1, 6),
--(2, 6)
(1, 7),
(1, 8)
;