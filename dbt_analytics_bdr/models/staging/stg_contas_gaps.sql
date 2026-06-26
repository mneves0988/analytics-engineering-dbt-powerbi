{{ config(materialized='view') }}

select
    -- Chaves e identificadores
    cod_conta_uuid as conta_id,
    
    -- Variaveis do gap
    classe_ativo,
    custodia_faixa,
    tipo_gap,
    gap_percentual_bucket,
    
    -- Metricas numericas
    aderencia_percentual

from {{ source('supabase_public', 'contas_gaps') }}