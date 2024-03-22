-- Table: public.nfitem

-- DROP TABLE IF EXISTS public.nfitem;

CREATE TABLE IF NOT EXISTS public.nfitem
(
    id integer NOT NULL DEFAULT nextval('nfitem_id_seq'::regclass),
    nf_id integer NOT NULL,
    produto_id integer NOT NULL,
    quantidade character varying(255) COLLATE pg_catalog."default" NOT NULL,
    valor_unity numeric(10,2) NOT NULL,
    situacao character varying COLLATE pg_catalog."default",
    CONSTRAINT nfitem_pkey PRIMARY KEY (id),
    CONSTRAINT nfitem_nf_id_fkey FOREIGN KEY (nf_id)
        REFERENCES public.nf (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.nfitem
    OWNER to financeiro;

GRANT ALL ON TABLE public.nfitem TO financeiro;

GRANT ALL ON TABLE public.nfitem TO negocio;