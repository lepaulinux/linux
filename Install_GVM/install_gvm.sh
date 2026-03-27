#!/usr/bin/env bash

# ============================================
# Script de instalação do GVM (Greenbone)
# ============================================

# Interrompe o script se houver erro
set -e

echo "========================================="
echo "🚀 Iniciando instalação do GVM..."
echo "========================================="

# Atualizar lista de pacotes e sistema
echo "[1/6] 🔄 Atualizando lista de pacotes..."
sudo apt update

echo "[2/6] ⬆️ Atualizando pacotes instalados..."
sudo apt upgrade -y

# Mostrar versão do sistema operacional
echo "[3/6] 🖥️ Verificando versão do sistema..."
cat /etc/os-release | grep -i PRETTY_NAME

# Instalar GVM
echo "[4/6] 📦 Instalando GVM..."
sudo apt install gvm -y

# Rodar setup inicial do GVM
echo "[5/6] ⚙️ Executando configuração inicial do GVM..."
sudo gvm-setup

# Verificar se a instalação está correta
echo "[6/6] ✅ Verificando instalação do GVM..."
sudo gvm-check-setup

# Iniciar serviços do GVM
echo "▶️ Iniciando serviços do GVM..."
sudo gvm-start

echo "========================================="
echo "🎉 Instalação do GVM finalizada!"
echo "Acesse via browser (normalmente): https://127.0.0.1:9392"
echo "========================================="


