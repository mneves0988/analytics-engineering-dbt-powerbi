{{ config(materialized='table') }}

select
    lead_id,
    whatsapp_id,
    nome_cliente,
    email,
    data_cadastro

from {{ ref('stg_leads_minerva') }}