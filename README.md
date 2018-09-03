## ingresse_dev_test

=======

**Ingress_dev_test** é uma aplicação feita para resolver o desafio 
proposto, https://gist.github.com/vitorleal/158e4e3870337dacf9475a5a27e5c7c9, da melhor 
maneira possivel.


## Setup do Projeto

### 
Pré requisitos

 - Ter [Ruby](https://www.ruby-lang.org) versão 2.5.1 previamente instalado na máquina


### Configurando e executando testes

- `bin/setup`
 
- `bundle exec rspec`

#### Docker
 - `docker-compose build`
 - `docker-compose run --rm web bin/setup`
 - `docker-compose run --rm --service-ports web bash`
 - `bundle exec rspec`


### Executando a aplicação

Após os passos de configuração executar o comando `rails server` e acessar pela
url [http://api.ingress-dev.test:3000//](http://http://api.ingress-dev.test:3000//), ou para consumir a api diretamente, por exemplo com: curl -v http://127.0.0.1:3000/users/1 

### Principais contribuidores
 
[mavmaso](https://github.com/mavmaso)