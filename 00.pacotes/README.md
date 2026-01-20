# Pacotes Essenciais no Debian Linux

Este documento lista pacotes comumente utilizados para melhorar a experiência
de uso do sistema Linux via terminal, facilitar administração básica
e apoiar estudos práticos.

Os pacotes listados aqui não são obrigatórios, mas representam um conjunto
recorrente em ambientes de uso diário.

> Sistema base: Debian GNU/Linux 13.2.0

---

### 1. Documentação e ajuda

```bash

sudo apt install man-db

```

- fornece páginas de manual (`man`)
- útil em instalações mínimas do Debian

### 2. Gerenciamento e utilitários básicos

```bash

sudo apt install curl wget

```

- `curl` → requisições HTTP, APIs, downloads
- `wget` → download de arquivos via terminal

### 3. Editores de texto no terminal

```bash

sudo apt install nano vim

```

- `nano` → simples, direto, ideal para iniciantes
- `vim` → mais poderoso, amplamente utilizado em servidores

### 4. Busca de arquivos

```bash

sudo apt install locate
sudo updatedb

```

- `locate` → busca rápida no sistema inteiro
- utiliza um banco de dados local, atualizado via `updatedb` (mais rápido que `find`)

### 5. Navegação em modo texto (TUI)

```bash

sudo apt install mc

```

- `mc` (Midnight Commander)

### 6. Navegadores web em modo texto

```bash

sudo apt install lynx links

```

- `lynx` → navegador web totalmente em modo texto
- `links` → semelhante ao lynx, com suporte a menus simples

Uso:

```bash

lynx https://debian.org

```

### 7. Monitoramento do sistema

```bash

sudo apt install htop

```

- alternativa moderna ao `top`
- visualização clara de CPU, memória e processos

### 8. Compactação e arquivamento

```bash

sudo apt install zip unzip tar gzip bzip2 xz-utils

```

- criação e extração de arquivos compactados
- essencial para backups e downloads

### 9. Rede e diagnóstico

```bash

sudo apt install net-tools iputils-ping dnsutils traceroute

```

- `netstat`, `ifconfig` (legado, ainda usado)
- `ping`, `traceroute`
- testes básicos de conectividade e DNS

### 10. Logs e sistema

```bash

sudo apt install rsyslog

```

- gerenciamento tradicional de logs
- complementa o `journalctl`

### 11. Utilitários administrativos

```bash

sudo apt install sudo tree

```

- `sudo` → execução de comandos com privilégios
- `tree` → visualização hierárquica de diretórios

### 12. Informações do Sistema e Estilização

```bash

sudo apt install neofetch

```

- `neofetch` → exibe um resumo visual do sistema (ícone da distro, kernel, hardware).
- muito utilizado para compartilhar *prints* do ambiente de estudo e verificar rapidamente a versão do S.O.

### Bônus: Efeito Matrix no Terminal

```bash

sudo apt install cmatrix

```

Uso:

```bash

cmatrix

```

- `q` ou `Ctrl+C`: sai do efeito e volta para o terminal.
- `b`: ativa negrito (**bold**).
- `C` (shift + c): muda a cor ( !verde, vermelho, azul, etc).
