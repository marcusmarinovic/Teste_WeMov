-- Table: public.situacao

-- DROP TABLE IF EXISTS public.situacao;

CREATE TABLE IF NOT EXISTS public.situacao
(
    id integer NOT NULL DEFAULT nextval('situacao_id_seq'::regclass),
    descricao character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT situacao_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.situacao
    OWNER to negocio;