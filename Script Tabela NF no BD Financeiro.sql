-- Table: public.nf

-- DROP TABLE IF EXISTS public.nf;

CREATE TABLE IF NOT EXISTS public.nf
(
    id integer NOT NULL DEFAULT nextval('nf_id_seq'::regclass),
    numero character(50) COLLATE pg_catalog."default" NOT NULL,
    emissao date NOT NULL,
    CONSTRAINT nf_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.nf
    OWNER to financeiro;