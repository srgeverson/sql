# Configuração PostgreSQL
Configuraçãoes realizadsa no PostgreSQL.

## 📌 Versão em continuo desenvolvimento

#### 🛠️ Instruções de configuração de acesso

```bash

### Alterando IPs e método de login
$ nano /var/lib/pgsql/data/pg_hba.conf

### Alterando a senha de usuário de SO
$ passwd postgres

### Alterando a senha de usuário de banco de dados
$ psql -c "ALTER USER postgres WITH PASSWORD '{NOVA_SENHA_AQUI}'" -d template1

### Liberando porta no firewall
$ firewall-cmd --permanent --zone=public --add-port=5432/tcp

### Recarregando as regras do firewall
$ firewall-cmd --reload

```

## 👨‍💻 Equipe de Desenvolvimento

* **Geverson Souza** - [Geverson Souza](https://www.linkedin.com/in/srgeverson/)

## ✒️ Autor

* **Geverson Souza** - [Geverson Souza](https://www.linkedin.com/in/srgeverson/)