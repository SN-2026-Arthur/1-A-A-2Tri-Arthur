#!/bin/bash 
# build.sh — injeta as variáveis de ambiente no index.html durante o deploy
# Executado automaticamente pelo Vercel a cada deploy
echo 'Iniciando build...' 
# Substitui o placeholder da URL pelo valor real da variável de ambiente 
sed -i "s|SUPABASE_URL|$SUPABASE_URL|g" index.html 
# Substitui o placeholder da chave pela anon key real 
sed -i "s|SUPABASE_ANON_KEY|$SUPABASE_ANON_KEY|g" index.html echo 'Build concluído — variáveis injetadas com sucesso.'
