CREATE SEQUENCE "portuary"."public"."tb_categoria_container_id_categoria_container_seq";

CREATE TABLE "portuary"."public"."tb_categoria_container" (
                "id_categoria_container" INTEGER NOT NULL DEFAULT nextval('"portuary"."public"."tb_categoria_container_id_categoria_container_seq"'),
                "va_nome" VARCHAR(100) NOT NULL,
                "ts_data_cadastro" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                "ts_data_alteracao" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                CONSTRAINT "tb_categoria_container_pk" PRIMARY KEY ("id_categoria_container")
);


ALTER SEQUENCE "portuary"."public"."tb_categoria_container_id_categoria_container_seq" OWNED BY "portuary"."public"."tb_categoria_container"."id_categoria_container";

CREATE SEQUENCE "portuary"."public"."tb_cliente_id_cliente_seq";

CREATE TABLE "portuary"."public"."tb_cliente" (
                "id_cliente" INTEGER NOT NULL DEFAULT nextval('"portuary"."public"."tb_cliente_id_cliente_seq"'),
                "va_cpf_cnpj" VARCHAR(20) NOT NULL,
                "va_nome" VARCHAR(500) NOT NULL,
                "ts_data_cadastro" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                "ts_data_alteracao" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                CONSTRAINT "tb_cliente_pk" PRIMARY KEY ("id_cliente")
);


ALTER SEQUENCE "portuary"."public"."tb_cliente_id_cliente_seq" OWNED BY "portuary"."public"."tb_cliente"."id_cliente";

CREATE SEQUENCE "portuary"."public"."tb_container_id_container_seq";

CREATE TABLE "portuary"."public"."tb_container" (
                "id_container" INTEGER NOT NULL DEFAULT nextval('"portuary"."public"."tb_container_id_container_seq"'),
                "va_numero" VARCHAR(11) NOT NULL,
                "ts_data_cadastro" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                "ts_data_alteracao" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                "id_cliente" INTEGER NOT NULL,
                "id_tipo_container" INTEGER NOT NULL,
                "id_status_container" INTEGER NOT NULL,
                "id_categoria_container" INTEGER NOT NULL,
                CONSTRAINT "tb_container_pk" PRIMARY KEY ("id_container")
);


ALTER SEQUENCE "portuary"."public"."tb_container_id_container_seq" OWNED BY "portuary"."public"."tb_container"."id_container";

CREATE SEQUENCE "portuary"."public"."tb_movimentacao_id_movimentacao_seq";

CREATE TABLE "portuary"."public"."tb_movimentacao" (
                "id_movimentacao" INTEGER NOT NULL DEFAULT nextval('"portuary"."public"."tb_movimentacao_id_movimentacao_seq"'),
                "id_tipo_movimentacao" INTEGER NOT NULL,
                "id_container" INTEGER NOT NULL,
                "ts_data_cadastro" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                "ts_data_alteracao" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                CONSTRAINT "tb_movimentacao_pk" PRIMARY KEY ("id_movimentacao")
);


ALTER SEQUENCE "portuary"."public"."tb_movimentacao_id_movimentacao_seq" OWNED BY "portuary"."public"."tb_movimentacao"."id_movimentacao";

CREATE SEQUENCE "portuary"."public"."tb_status_container_id_status_container_seq";

CREATE TABLE "portuary"."public"."tb_status_container" (
                "id_status_container" INTEGER NOT NULL DEFAULT nextval('"portuary"."public"."tb_status_container_id_status_container_seq"'),
                "va_nome" VARCHAR(100) NOT NULL,
                "ts_data_cadastro" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                "ts_data_alteracao" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                CONSTRAINT "tb_status_container_pk" PRIMARY KEY ("id_status_container")
);


ALTER SEQUENCE "portuary"."public"."tb_status_container_id_status_container_seq" OWNED BY "portuary"."public"."tb_status_container"."id_status_container";

CREATE SEQUENCE "portuary"."public"."tb_tipo_container_id_tipo_container_seq";

CREATE TABLE "portuary"."public"."tb_tipo_container" (
                "id_tipo_container" INTEGER NOT NULL DEFAULT nextval('"portuary"."public"."tb_tipo_container_id_tipo_container_seq"'),
                "va_nome" VARCHAR(10) NOT NULL,
                "ts_data_cadastro" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                "ts_data_alteracao" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                CONSTRAINT "tb_tipo_container_pk" PRIMARY KEY ("id_tipo_container")
);


ALTER SEQUENCE "portuary"."public"."tb_tipo_container_id_tipo_container_seq" OWNED BY "portuary"."public"."tb_tipo_container"."id_tipo_container";

CREATE SEQUENCE "portuary"."public"."tb_tipo_movimentacao_id_tipo_movimentacao_seq";

CREATE TABLE "portuary"."public"."tb_tipo_movimentacao" (
                "id_tipo_movimentacao" INTEGER NOT NULL DEFAULT nextval('"portuary"."public"."tb_tipo_movimentacao_id_tipo_movimentacao_seq"'),
                "va_nome" VARCHAR(100) NOT NULL,
                "ts_data_cadastro" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                "ts_data_alteracao" TIMESTAMP DEFAULT current_timestamp NOT NULL,
                CONSTRAINT "tb_tipo_movimentacao_pk" PRIMARY KEY ("id_tipo_movimentacao")
);


ALTER SEQUENCE "portuary"."public"."tb_tipo_movimentacao_id_tipo_movimentacao_seq" OWNED BY "portuary"."public"."tb_tipo_movimentacao"."id_tipo_movimentacao";

ALTER TABLE "portuary"."public"."tb_container" ADD CONSTRAINT "tb_categoria_container_tb_container_fk"
FOREIGN KEY ("id_categoria_container")
REFERENCES "portuary"."public"."tb_categoria_container" ("id_categoria_container")
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE "portuary"."public"."tb_container" ADD CONSTRAINT "tb_cliente_tb_container_fk"
FOREIGN KEY ("id_cliente")
REFERENCES "portuary"."public"."tb_cliente" ("id_cliente")
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE "portuary"."public"."tb_movimentacao" ADD CONSTRAINT "tb_container_tb_movimentacao_fk"
FOREIGN KEY ("id_container")
REFERENCES "portuary"."public"."tb_container" ("id_container")
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE "portuary"."public"."tb_container" ADD CONSTRAINT "tb_status_container_tb_container_fk"
FOREIGN KEY ("id_status_container")
REFERENCES "portuary"."public"."tb_status_container" ("id_status_container")
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE "portuary"."public"."tb_container" ADD CONSTRAINT "tb_tipo_container_tb_container_fk"
FOREIGN KEY ("id_tipo_container")
REFERENCES "portuary"."public"."tb_tipo_container" ("id_tipo_container")
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE "portuary"."public"."tb_movimentacao" ADD CONSTRAINT "tb_tipo_movimentacao_tb_movimentacao_fk"
FOREIGN KEY ("id_tipo_movimentacao")
REFERENCES "portuary"."public"."tb_tipo_movimentacao" ("id_tipo_movimentacao")
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;