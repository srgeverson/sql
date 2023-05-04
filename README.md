# Projeto SQL
Este é um repositório de SQL testados nos Bancos de Dados.

## 📌 Versão em continuo desenvolvimento

💡 Ferramentas utilizadas neste projeto

* pgAdmin 4

* Workbanch 8.0 CE 4

* phpMyAdmin

* SQL Developer

* IBExpert 2012

* SQL Server Management Studio 2018

* SQL Assistent 11

💡 Funcionalidades presentes neste App

* Gatilhos

* Stored Procedure

* Stored Function

* CTE

* SELECT, INSERT, UPDATE e DELETE

## 🛠️ Instruções contidas nesse projeto

### Intruções SQL do **[MySQL](https://github.com/srgeverson/sql/tree/master/mysql)**

### Intruções SQL do **[SQL Server](https://github.com/srgeverson/sql/tree/master/sql_server)**

### Intruções SQL do **[PostgreSQL](https://github.com/srgeverson/sql/tree/master/postgres)**

### Intruções SQL do **[Oracle]()**

### Intruções **[Firebird](https://github.com/srgeverson/sql/tree/master/firebird)**

### Demais intruções **[Outros](https://github.com/srgeverson/sql/tree/master/outros)**

## 🎲 Executando projeto

```bash

# Clone o projeto.
$ git clone https://srgeverson@github.com/sql.git

# Crie um banco de dados e adicione ao arquivo .env na raiz do projeto as seguintes configurações: 
$ BANCO_HOST_IP=db_sql
$ BANCO_PORTA=3306
$ BANCO_USUARIO=root
$ BANCO_SENHA=12345678
$ BANCO_NOME=sql

# Para ciar variável de ambiente no linux:
$ export BANCO_HOST_IP="db_sql"

# Para ciar variável de ambiente no windows:
$ setx BANCO_HOST_IP db_sql /m

# Baixar as imagems e executar os containers em modo não iterativo(deve ser utilizado na primeira execução)
$ docker-compose up -d --scale db_mysql=1

# Baixar as imagems e executar os containers em modo iterativo(deve ser utilizado na primeira execução)
$ docker-compose up

# Inicializa quando precisa executar os container depois da primeira vez
$ docker-compose start

# Para os containers
$ docker-compose stop

# Reiniciar os containers
$ docker-compose restart

# Apagar as imagems e parar os containers (deve ser utilizado quando precisar recriar as imagens)
$ docker-compose down --volumes

```

## 📃 Backup/Restore de dados

```bash
# Em ambientes windows execute o seguinte comando
$ cd C:\Program Files\MySQL\MySQL Server 8.0\

# Autenticando no banco de dados em seguida será solicitado a senha
$ mysql -u root -p

# Saindo da autenticação
$ exit;

# Salvando dados
$ mysqldump -u root -p sql > {PASTA_DE_DESTINO_DO_BACACKUP}/sql/mysql/paulistense_db.sql

# Resraurando
$ mysql -u root -p sql < {PASTA_ONDE_O_PROJETO_FOI_CLONADO}/sql/mysql/sql/sql/paulistense_db.sql

```

## 👨‍💻 Equipe de Desenvolvimento

* **Geverson Souza** - [Geverson Souza](https://www.linkedin.com/in/srgeverson/)

## ✒️ Autor

* **Geverson Souza** - [Geverson Souza](https://www.linkedin.com/in/srgeverson/)
