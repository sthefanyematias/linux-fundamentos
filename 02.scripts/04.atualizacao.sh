# shebang - define que o script deve ser interpretado pelo bash
#!/bin/bash

# exibe mensagem de inicio
echo "--- iniciando atualizacao do sistema ---"

# atualiza a lista de repositórios
sudo apt update

# aplica as atualizações disponiveis sem pedir confirmação (-y)
echo "instalando atualizacoes..."
sudo apt upgrade -y

# limpa pacotes antigos para economizar espaco
echo "removendo lixo do sistema..."
sudo apt autoremove -y
sudo apt autoclean

# exibe mensagem final
echo "sistema atualizado com sucesso!"
