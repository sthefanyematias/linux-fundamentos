#!/bin/bash

DATA=$(date +%Y-%m-%d)
DESTINO="$HOME/backup_$DATA"

mkdir -p "$DESTINO"
cp -r "$HOME/documentos" "$DESTINO"

echo "Backup concluído em $DESTINO"
