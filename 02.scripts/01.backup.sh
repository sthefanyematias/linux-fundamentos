# shebang - define que o script deve ser interpretado pelo bash
#!/bin/bash

# define a data atual no formato ano-mes-dia e guarda na variavel data
DATA=$(date +%Y-%m-%d)

# define o caminho da pasta que sera copiada
ORIGEM="$HOME/documentos"

# define o local onde o backup sera salvo usando a data no nome
DESTINO="$HOME/backup_$DATA"

# inicia uma condicional para verificar se a pasta de origem existe
if [ -d "$ORIGEM" ]; then

    # cria a pasta de destino e o parâmetro -p evita erro caso ela já exista
    mkdir -p "$DESTINO"

    # copia a pasta de origem para o destino de forma recursiva (inclui subpastas)
    cp -r "$ORIGEM" "$DESTINO"

    # exibe uma mensagem de sucesso 
    echo "backup concluido com sucesso em: $DESTINO"

# caso a pasta de origem não seja encontrada, executa o bloco abaixo
else

    # exibe uma mensagem de erro informando qual pasta esta faltando
    echo "erro: a pasta $ORIGEM nao foi encontrada."

    # encerra o script com um codigo de erro (1) para o sistema operacional
    exit 1

# finaliza a estrutura condicional if
fi
