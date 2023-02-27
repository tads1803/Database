ALTER TABLE "portuary"."public"."tb_movimentacao" DROP COLUMN "ts_data_alteracao";

ALTER TABLE "portuary"."public"."tb_movimentacao" DROP COLUMN "ts_data_cadastro";

ALTER TABLE "portuary"."public"."tb_movimentacao" ADD COLUMN "ts_data_inicio" TIMESTAMP DEFAULT current_timestamp NOT NULL;

ALTER TABLE "portuary"."public"."tb_movimentacao" ADD COLUMN "ts_data_termino" TIMESTAMP;