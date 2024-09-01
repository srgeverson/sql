--select *
--from
--segmento
--grupo
--subgrupo
          --select --r.descricao ||' - kakakakak'
--SUBSTRING("Patients"."Name" FROM 1 FOR (POSITION(' ' IN "Patients"."Name")))
              --                        *
--from refer r      where r.cod_refer='AN1512600'

--insert into refer (
--COD_REFER, COD_SEGMTO, COD_GRUPO, COD_SUBGRUPO, COD_REFER_FORNEC, DESCRICAO,          COMPLEMENTO_DESCRICAO,  UNIDADE_MEDIDA_ENTD, UNIDADE_MEDIDA, FATOR_CONV_UNIDADE_MEDIDA, DT_INCLUSAO,            DT_CANCELAMENTO, DT_INI_BLOQUEIO,   DT_FIM_BLOQUEIO,   PRECO_CUSTO,                                     PRECO_CUSTO_ANT1, PRECO_CUSTO_ANT2, DT_PRECO_CUSTO, DT_CUSTO_ANT1,  DT_CUSTO_ANT2, PRECO_VENDA,                                                 ALIQUOTA_IPI, ESTOQUE_MINIMO, ESTOQUE_ATUAL, ESTOQUE_PENDENTE, ESTOQUE_PENDENTE_VENDA, ESTOQUE_FISCAL, ESTOQUE_SEC1, ESTOQUE_SEC2, PESO_LIQUIDO, PESO_BRUTO, COMISSAO_VENDA, MARGEM_LUCRO, COEFICIENTE_VENDA,                                                                                           DESPESAS_OPERACIONAIS, ICMS_SUBST, STATUS, COMISSAO_CUSTO, DESCONTO_LIMITADO, DESCONTO_MAXIMO, PRECO_VENDA_ANT1, DT_PRECO_VENDA, DT_VENDA_ANT1, ICMS_VENDA, IMPOSTO_FIXO, ORIGEM_INC, LARGURA_TECIDO, RENDIMENTO_TECIDO, DT_EXPIRACAO, DESCRICAO_CLASSE, COD_GRADE1, COD_GRADE2, COD_GRADE3, DESCRICAO_REDUZIDA, COD_GRADE, COD_FORNEC, DT_ALTERACAO,          CLASSIFICACAO_FISCAL, ICMS_REDUCAO, LAVAGEM, ALVEJAMENTO, SECAGEM, PASSADORIA, LIMP_SECO, PAIS_ORIGEM, UTILIZA_NUM_SERIE, COD_REFER_CONSOL, SITUACAO_TRIBUTARIA, ECF,  COD_FISCAL, PRECO_CUSTO_MED, NCM,   ICMS_SUBST_ENTRADA, PRECO_CEF, COD_GENERO, SIMILAR_PAIS, ICMS_IMP_VENDA, GRAMATURA, COD_GRUPTRIB, PERC_TRIBUTO, MIN_A_PRODUZIR, UTILIZA_MAX_VENDA, COD_SEGMTO_ANT, COD_GRUPO_ANT, COD_SUBGRUPO_ANT, TIPO_PRODUTO, COD_FASEPROD, ESTOQUE_RESERVADO, ESTOQUE_SEC3, ESTOQUE_SEC4, PRECO_CUSTO_MED_DIG, UNIDADE_MEDIDA_CONSUMO, PERC_ADICIONAL_PROD, PRECO_CUSTO_MED_CEF, CEST, TOL_LARGURA_TECIDO, TOL_GRAMATURA, TOL_RENDIMENTO, ALT_DIMENS_LAV_COMP, ALT_DIMENS_LAV_LARG, TORCAO_LAV, SOLIDEZ_LAV, PESO_APROX_ROLO, LIM_ACEITE_QUALIDADE, SOLIDEZ_FRIC_SECO_UMI, ESTOQUE_RESERVADO_BALCAB, CSOSN, COD_TIPO_REFER, TEMPO_OPERACIONAL_PADRAO, VR_MAO_DE_OBRA_PADRAO, FCP, ESTAB_ORIGEM, PASTA_IMAGEM, TIPO_GRADE, ID_PRODUTO_VNDA, DIMENSAO_ALTURA, DIMENSAO_LARGURA, DIMENSAO_COMPRIMENTO, ID_PRODUTO_IRROBA)

with cte_teste as (
select 'CR2446000'Codigo, ' CORRENTE ELOS 3POR 1 3MM 60CM' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '264,6' ValorUnitario from RDB$DATABASE UNION 
select 'CR0954500'Codigo, ' CORRENTE GRATIDAO COM ROSA' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '113,4' ValorUnitario from RDB$DATABASE UNION 
select 'CR0554200'Codigo, ' CORRENTE MIMOSA' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '59,4' ValorUnitario from RDB$DATABASE UNION 
select 'CR1634500'Codigo, ' CORRENTE MINI CORACAO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '59,4' ValorUnitario from RDB$DATABASE UNION 
select 'CR1635000'Codigo, ' CORRENTE MINI CORACAO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 3 Quantidade, '64,8' ValorUnitario from RDB$DATABASE UNION 
select 'CR0974500'Codigo, ' CORRENTE PLAQUINHA DESENHO CACHORRO LISO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '70,2' ValorUnitario from RDB$DATABASE UNION 
select 'CR0565000'Codigo, ' CORRENTE SINGAPURA EXTRA MINI' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '48,6' ValorUnitario from RDB$DATABASE UNION 
select 'CR2304537'Codigo, ' CORRENTE URSO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '145,8' ValorUnitario from RDB$DATABASE UNION 
select 'RD00067253'Codigo, ' ESTOJO VELUDO P ALIANCA' Descricao, 42029900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 13 Quantidade, '4,3' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850044'Codigo, ' PINGENTE A' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850045'Codigo, ' PINGENTE B' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850046'Codigo, ' PINGENTE C' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG0400000'Codigo, ' PINGENTE CALSSICO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '37,8' ValorUnitario from RDB$DATABASE UNION 
select 'PG1740000'Codigo, ' PINGENTE CALSSICO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '32,4' ValorUnitario from RDB$DATABASE UNION 
select 'PG1830000'Codigo, ' PINGENTE CALSSICO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '32,4' ValorUnitario from RDB$DATABASE UNION 
select 'PG0010006'Codigo, ' PINGENTE CALSSICO 0,7 17,5' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '65,34' ValorUnitario from RDB$DATABASE UNION 
select 'PG0060006'Codigo, ' PINGENTE CALSSICO 2,2 17,5' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '72,9' ValorUnitario from RDB$DATABASE UNION 
select 'PG1910033'Codigo, ' PINGENTE CLASSICA' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '32,4' ValorUnitario from RDB$DATABASE UNION 
select 'PG1960000'Codigo, ' PINGENTE CLASSICA' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '64,8' ValorUnitario from RDB$DATABASE UNION 
select 'PG0160006'Codigo, ' PINGENTE CLASSICA BRANCO 0,5 17,5' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '27' ValorUnitario from RDB$DATABASE UNION 
select 'PG0320006'Codigo, ' PINGENTE CLASSICO 0,63 17,5' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '38,525' ValorUnitario from RDB$DATABASE UNION 
select 'PG0100000'Codigo, ' PINGENTE CLASSICO 0,85 17,5' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 5 Quantidade, '27' ValorUnitario from RDB$DATABASE UNION 
select 'PG0070000'Codigo, ' PINGENTE CLASSICO 0.64 17,5' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '27' ValorUnitario from RDB$DATABASE UNION 
select 'PG0110006'Codigo, ' PINGENTE CLASSICO 1,62 17,5' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 3 Quantidade, '37,8' ValorUnitario from RDB$DATABASE UNION 
select 'PG0415506'Codigo, ' PINGENTE CLASSICO 1,62 17,5' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '32,4' ValorUnitario from RDB$DATABASE UNION 
select 'PG0280000'Codigo, ' PINGENTE CLASSICO MEDALHA ESPIRITO SANTO LISO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '43,2' ValorUnitario from RDB$DATABASE UNION 
select 'PG0220000'Codigo, ' PINGENTE CLASSICO MEDALHA SAO BENTO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '91,8' ValorUnitario from RDB$DATABASE UNION 
select 'PG0290000'Codigo, ' PINGENTE CLASSICO SAO JORGE VAZADA LISA' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '43,2' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850047'Codigo, ' PINGENTE D' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850048'Codigo, ' PINGENTE E' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850049'Codigo, ' PINGENTE F' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850050'Codigo, ' PINGENTE G' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850054'Codigo, ' PINGENTE K' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850055'Codigo, ' PINGENTE L' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850056'Codigo, ' PINGENTE M' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG0130000'Codigo, ' PINGENTE MADALGA RETANGULAR CRUZ TRABALHADA' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '59,4' ValorUnitario from RDB$DATABASE UNION 
select 'PG2880006'Codigo, ' PINGENTE MENINA CABELO AMARRADO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '102,6' ValorUnitario from RDB$DATABASE UNION 
select 'PG2890006'Codigo, ' PINGENTE MENINO ROSTO VAZADO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '102,6' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850057'Codigo, ' PINGENTE N' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG2810006'Codigo, ' PINGENTE NOSSA SENHORA' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '113,4' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850059'Codigo, ' PINGENTE P' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850061'Codigo, ' PINGENTE R' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850062'Codigo, ' PINGENTE S' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850063'Codigo, ' PINGENTE T' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PG2850065'Codigo, ' PINGENTE V' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PL0860000'Codigo, ' PULSEIRA' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '199,8' ValorUnitario from RDB$DATABASE UNION 
select 'PL1110006'Codigo, ' PULSEIRA' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '324' ValorUnitario from RDB$DATABASE UNION 
select 'PL1130006'Codigo, ' PULSEIRA' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '226,8' ValorUnitario from RDB$DATABASE UNION 
select 'PL0272100'Codigo, ' PULSEIRA CLASSICA CLASSICA 2,3 17,5 21' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '75,6' ValorUnitario from RDB$DATABASE UNION 
select 'PL0492000'Codigo, ' PULSEIRA CLASSICA ELO PORTUGUES M' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '129,6' ValorUnitario from RDB$DATABASE UNION 
select 'PL0891900'Codigo, ' PULSEIRA CLASSICO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '81' ValorUnitario from RDB$DATABASE UNION 
select 'PL0892000'Codigo, ' PULSEIRA CLASSICO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '86,4' ValorUnitario from RDB$DATABASE UNION 
select 'PL1282100'Codigo, ' PULSEIRA CLASSICO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '70,2' ValorUnitario from RDB$DATABASE UNION 
select 'PL1282200'Codigo, ' PULSEIRA CLASSICO' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '75,6' ValorUnitario from RDB$DATABASE UNION 
select 'PL0881600'Codigo, ' PULSEIRA GRUMET' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 5 Quantidade, '64,8' ValorUnitario from RDB$DATABASE UNION 
select 'PL1391900'Codigo, ' PULSEIRA MASCULINA' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '194,4' ValorUnitario from RDB$DATABASE UNION 
select 'PL0721926'Codigo, ' PULSEIRA PEROLA COM BOLINHA' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 1 Quantidade, '75,6' ValorUnitario from RDB$DATABASE UNION 
select 'PL0731612'Codigo, ' PULSEIRA PEROLA COM PEDRINHA TIFANY' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 3 Quantidade, '70,2' ValorUnitario from RDB$DATABASE UNION 
select 'PL1232026'Codigo, ' PULSEIRA PRATA' Descricao, 71171900 NCM, 0 CST, 5102 CFOP, ' UND' UM, 2 Quantidade, '91,8' ValorUnitario from RDB$DATABASE

)
--COD_REFER, COD_SEGMTO, COD_GRUPO, COD_SUBGRUPO, COD_REFER_FORNEC, DESCRICAO,          COMPLEMENTO_DESCRICAO,  UNIDADE_MEDIDA_ENTD, UNIDADE_MEDIDA, FATOR_CONV_UNIDADE_MEDIDA, DT_INCLUSAO,            DT_CANCELAMENTO, DT_INI_BLOQUEIO,   DT_FIM_BLOQUEIO,   PRECO_CUSTO,                                     PRECO_CUSTO_ANT1, PRECO_CUSTO_ANT2, DT_PRECO_CUSTO, DT_CUSTO_ANT1,  DT_CUSTO_ANT2, PRECO_VENDA,                                                 ALIQUOTA_IPI, ESTOQUE_MINIMO, ESTOQUE_ATUAL, ESTOQUE_PENDENTE, ESTOQUE_PENDENTE_VENDA, ESTOQUE_FISCAL, ESTOQUE_SEC1, ESTOQUE_SEC2, PESO_LIQUIDO, PESO_BRUTO, COMISSAO_VENDA, MARGEM_LUCRO, COEFICIENTE_VENDA,                                                                                           DESPESAS_OPERACIONAIS, ICMS_SUBST, STATUS, COMISSAO_CUSTO, DESCONTO_LIMITADO, DESCONTO_MAXIMO, PRECO_VENDA_ANT1, DT_PRECO_VENDA, DT_VENDA_ANT1, ICMS_VENDA, IMPOSTO_FIXO, ORIGEM_INC, LARGURA_TECIDO, RENDIMENTO_TECIDO, DT_EXPIRACAO, DESCRICAO_CLASSE, COD_GRADE1, COD_GRADE2, COD_GRADE3, DESCRICAO_REDUZIDA, COD_GRADE, COD_FORNEC, DT_ALTERACAO,          CLASSIFICACAO_FISCAL, ICMS_REDUCAO, LAVAGEM, ALVEJAMENTO, SECAGEM, PASSADORIA, LIMP_SECO, PAIS_ORIGEM, UTILIZA_NUM_SERIE, COD_REFER_CONSOL, SITUACAO_TRIBUTARIA, ECF,  COD_FISCAL, PRECO_CUSTO_MED, NCM,   ICMS_SUBST_ENTRADA, PRECO_CEF, COD_GENERO, SIMILAR_PAIS, ICMS_IMP_VENDA, GRAMATURA, COD_GRUPTRIB, PERC_TRIBUTO, MIN_A_PRODUZIR, UTILIZA_MAX_VENDA, COD_SEGMTO_ANT, COD_GRUPO_ANT, COD_SUBGRUPO_ANT, TIPO_PRODUTO, COD_FASEPROD, ESTOQUE_RESERVADO, ESTOQUE_SEC3, ESTOQUE_SEC4, PRECO_CUSTO_MED_DIG, UNIDADE_MEDIDA_CONSUMO, PERC_ADICIONAL_PROD, PRECO_CUSTO_MED_CEF, CEST, TOL_LARGURA_TECIDO, TOL_GRAMATURA, TOL_RENDIMENTO, ALT_DIMENS_LAV_COMP, ALT_DIMENS_LAV_LARG, TORCAO_LAV, SOLIDEZ_LAV, PESO_APROX_ROLO, LIM_ACEITE_QUALIDADE, SOLIDEZ_FRIC_SECO_UMI, ESTOQUE_RESERVADO_BALCAB, CSOSN, COD_TIPO_REFER, TEMPO_OPERACIONAL_PADRAO, VR_MAO_DE_OBRA_PADRAO, FCP, ESTAB_ORIGEM, PASTA_IMAGEM, TIPO_GRADE, ID_PRODUTO_VNDA, DIMENSAO_ALTURA, DIMENSAO_LARGURA, DIMENSAO_COMPRIMENTO, ID_PRODUTO_IRROBA
select
   rdb$db_key as row_number,
  c.Codigo,       1,          3,         3,       c.Codigo,         c.Descricao,        NULL,                   'UND',               'UND',          1,                         '2024-08-31 00:00:00',  NULL,            NULL,              NULL,              CAST(replace(c.ValorUnitario,',','.') AS float), NULL,             NULL,             NULL,           NULL,           NULL,          (CAST(replace(c.ValorUnitario,',','.') AS float)*100)/54,    0,            NULL,           NULL,          NULL,             NULL,                   NULL,           NULL,         NULL,         NULL,         NULL,       NULL,           0,            ((CAST(replace(c.ValorUnitario,',','.') AS float)*100)/54)/CAST(replace(c.ValorUnitario,',','.') AS float),  0,                     0,          '',     0,              NULL,              NULL,            NULL,             NULL,           NULL,          0,          0,            NULL,       NULL,           NULL,              NULL,         NULL,             NULL,       NULL,       NULL,       'ANEL VARIADOS',    NULL,      NULL,       '2024-08-31 00:00:00', NULL,                 0,            0,       0,           0,       0,          0,         NULL,        NULL,              NULL,             '060',               NULL, 2,          NULL,            c.NCM, NULL,               NULL,      NULL,       NULL,         NULL,           NULL,      NULL,         NULL,         NULL,           'N',               NULL,           NULL,          NULL,             NULL,         NULL,         NULL,              NULL,         NULL,         NULL,                'UND',                  NULL,                NULL,                NULL, NULL,               NULL,          NULL,           NULL,                NULL,                NULL,       NULL,        NULL,            NULL,                 NULL,                  NULL,                     NULL,  1,              NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL
--*
from cte_teste c
where 1=1
--and not exists(select * from refer r1 where r1.cod_refer=c.codigo)

with c as (
select
                 rdb$set_context('USER_TRANSACTION','SEQ',0) s
                 ,rdb$get_context('USER_TRANSACTION','SEQ') g
from rdb$database
)

select * from c
