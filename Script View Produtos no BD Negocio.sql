-- View: public.vw_prod_unificada

-- DROP VIEW public.vw_prod_unificada;

CREATE OR REPLACE VIEW public.vw_prod_unificada
 AS
 SELECT produtos.id AS produto_id,
    produtos.nome AS nome_produto,
    produtos.descricao AS descricao_produto,
    situacao.id AS situacao_id,
    situacao.descricao AS descricao_situacao
   FROM produtos
     JOIN situacao ON produtos.situacao_id = situacao.id;

ALTER TABLE public.vw_prod_unificada
    OWNER TO negocio;

GRANT ALL ON TABLE public.vw_prod_unificada TO financeiro;
GRANT ALL ON TABLE public.vw_prod_unificada TO negocio;

