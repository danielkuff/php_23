# php_23
    1 Verificar se estamos no Ubuntu
    
    2 File > open folder
    2.1 - Apaga o conteudo
    2.2 - Informa o caminho /var/www/html
    2.3 - Abre essa pasta (enter ou clicando com o mouse em html)
    
    3 - Terminal - novo terminal

    4 - Git clone  LINK_DO_REPOSITORIO (github)

    5 - Informa o caminho /var/www/html/php_23
    5.1 - Abre essa pasta (com enter ou clicando com mouse em HTML)

    6 - Configurar o git (git email e o git name da pagina 4 da apostila)

    7 - Verificar se o apache esta rodando/executando
    7.1 - Acessar o navegador com localhost ou 127.0.0.1 (deve aparecer a configuracao inicial do apache)
    7.2 - Sudo service apache2 status (apache is running precisa aparecer)
    7.3 - Sudo service apache2 start
    7.4 - Executar os passos 7.1 e 7.2 (caso houver problemas se o apache não estiver rodando)

## Para salvar no github
    1 - git add . (. = todos os arquivos ou especificar por nome ex.: git add index.php)

    2 - git comit -m "descrever o que foi feito"

    3 - git push

    4 - Verificar no github se ficou salvo.

### Para fazer merge
     - git checkout (ir para o local desejado)
     - git pull
     - git merge
     - resolver conflitos (se houver com git add .(git commit -m))
     - git push
     - Verificar no git se ficou salvo

### Criar tabelas
## Tabela de usuário

     - 1.id/codigo (PK) Primary key
     - 2.user_id - NOK
     - 3.user_status - NOK
     - 4.user_fullname
     - 5.user_name
     - 6.user_pass
     - 7.user_mail
     - 8.user_rank
     
     - 9.user_department (FK) Foreign key = PK de outra tabela
     - 10.alt_who (mod_who)
     - 11.alt_when - NOK (mod_when)
     - 12.log_first - NOK
     - 13.log_last - NOK
