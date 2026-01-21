# shebang - define que o script deve ser interpretado pelo bash
#!/bin/bash

# exibe o titulo da seção de cpu
echo "--- uso de cpu ---"
# o comando top em modo batch (-b) com 1 atualização (-n1) pegando as 5 primeiras linhas
top -bn1 | head -5

# pula uma linha para melhorar a leitura
echo ""

# exibe o titulo da seção de memoria
echo "--- memoria ram ---"
# exibe o uso de memória em formato human readable (leitura humana)
free -h

# pula uma linha
echo ""

# exibe o titulo da seção de armazenamento
echo "--- uso de disco ---"
# exibe o uso das partições em formato human readable
df -h
