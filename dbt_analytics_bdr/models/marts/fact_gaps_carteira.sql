{{ config(materialized='table') }}

select
    conta_id,
    classe_ativo,
    custodia_faixa,
    tipo_gap,
    gap_percentual_bucket,
    aderencia_percentual

from {{ ref('stg_contas_gaps') }}