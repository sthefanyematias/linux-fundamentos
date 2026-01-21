# shebang - define que o script deve ser interpretado pelo bash
#!/bin/bash

# exibe o usuário atual logado
echo "--- informacoes de acesso ---"
echo "usuario atual: $(whoami)"

# exibe ha quanto tempo o sistema esta ligado
echo "tempo de atividade: $(uptime -p)"

# exibe os últimos 5 logins realizados no sistema
echo ""
echo "ultimos 5 logins realizados:"
last -n 5

# exibe quantos usuários estão conectados agora
echo ""
echo "usuarios conectados agora:"
who
