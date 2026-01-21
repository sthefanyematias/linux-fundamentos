# shebang - define que o script deve ser interpretado pelo bash
#!/bin/bash

# exibe mensagem de inicio da limpeza
echo "--- iniciando limpeza do sistema ---"

# remove arquivos temporários (o sudo á necessário para limpar certas pastas)
# o asterisco (*) indica para apagar o conteúdo, mas manter a pasta /tmp
echo "removendo arquivos temporarios em /tmp..."
sudo rm -rf /tmp/*

# limpa o cache de pacotes do gerenciador apt (economiza muito espaço)
echo "limpando cache do gerenciador de pacotes (apt)..."
sudo apt clean

# remove pacotes que foram instalados como dependências e não são mais usados
echo "removendo dependencias desnecessarias..."
sudo apt autoremove -y

# exibe mensagem de finalização
echo ""
echo "limpeza concluida com sucesso."
