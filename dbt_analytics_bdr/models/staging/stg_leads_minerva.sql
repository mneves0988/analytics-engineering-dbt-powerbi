{{ config(materialized='view') }}

select
    -- Chaves
    session_id as lead_id,
    telegram_id as whatsapp_id,
    
    -- Dados de perfil do lead
    nome as nome_cliente,
    email,
    
    -- Datas
    criado_em as data_cadastro

from {{ source('supabase_public', 'cyrius_leads_minerva_telegram') }}