# shebang - define que o script deve ser interpretado pelo bash
#!/bin/bash

# exibe mensagem de inicio
echo "--- iniciando organizacao de arquivos ---"

# cria as pastas de destino se elas não existirem
mkdir -p imagens documentos scripts

# inicia um loop que percorre todos os arquivos do diretório atual
for arquivo in *; do

    # verifica se o arquivo termina com .jpg ou .png
    if [[ "$arquivo" == *.jpg ]] || [[ "$arquivo" == *.png ]]; then
        mv "$arquivo" imagens/
        echo "movendo $arquivo para a pasta imagens"

    # verifica se o arquivo termina com .txt ou .pdf
    elif [[ "$arquivo" == *.txt ]] || [[ "$arquivo" == *.pdf ]]; then
        mv "$arquivo" documentos/
        echo "movendo $arquivo para a pasta documentos"

    # verifica se o arquivo termina com .sh
    elif [[ "$arquivo" == *.sh ]]; then
        # evita que o proprio script se mova
        if [ "$arquivo" != "organizador.sh" ]; then
            mv "$arquivo" scripts/
            echo "movendo $arquivo para a pasta scripts"
        fi
    fi

# finaliza o loop
done

echo ""
echo "organizacao concluida!"
