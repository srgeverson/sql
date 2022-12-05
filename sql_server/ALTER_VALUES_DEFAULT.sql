alter table sistemas
add data_cadastro DATETIMEOFFSET default GETUTCDATE()
with values;

ALTER TABLE sistemas
DROP COLUMN data_cadastro;