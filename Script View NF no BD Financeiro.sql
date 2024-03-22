-- View: public.vw_nf_unificada

-- DROP VIEW public.vw_nf_unificada;

CREATE OR REPLACE VIEW public.vw_nf_unificada
 AS
 SELECT nf.id AS nf_id,
    nf.numero,
    nf.emissao,
    nfitem.id AS nfitem_id,
    nfitem.produto_id,
    nfitem.quantidade,
    nfitem.valor_unity,
    nfitem.situacao
   FROM nf nf
     JOIN nfitem ON nf.id = nfitem.nf_id;

ALTER TABLE public.vw_nf_unificada
    OWNER TO financeiro;

GRANT ALL ON TABLE public.vw_nf_unificada TO financeiro;
GRANT ALL ON TABLE public.vw_nf_unificada TO negocio;

