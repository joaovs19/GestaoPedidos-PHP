# 📋 Sistema de Cadastro e Gerenciamento de Pedidos

Este projeto é uma aplicação web para **cadastro, visualização, edição e exclusão de pedidos** em um banco de dados MySQL. A interface é construída utilizando **HTML**, **PHP** e **Bootstrap 5**, garantindo uma experiência moderna e responsiva para o usuário.

---

## 🚀 Funcionalidades

1. **Cadastro de Pedidos**  
   - Permite registrar novos pedidos no banco de dados.  
   - Campos:
     - `Cod_Solicitante`
     - `Confirmação`
     - `Forma de Pagamento`
     - `Pedido pela Internet`  

2. **Visualização dos Pedidos**  
   - Exibe uma lista de todos os pedidos cadastrados em formato de tabela.  
   - A interface é responsiva e amigável.

3. **Edição de Pedidos**  
   - Atualize informações de um pedido existente.

4. **Exclusão de Pedidos**  
   - Remova pedidos da lista com confirmação de exclusão.

---

## 🛠️ Tecnologias Utilizadas

- **Front-end**:  
   - HTML5  
   - CSS3  
   - Bootstrap 5  

- **Back-end**:  
   - PHP  
   - MySQL

- **Servidor**:  
   - Apache (XAMPP, WAMP ou similar)

---

## 💾 Estrutura do Banco de Dados

O projeto utiliza uma tabela chamada **`pedido`**, com a seguinte estrutura:

| Coluna              | Tipo         | Descrição                      |
|---------------------|--------------|--------------------------------|
| `Cod_Pedido`        | INT (PRI)    | Identificador do Pedido        |
| `Cod_Solicitante`   | INT (MUL)    | Chave estrangeira do solicitante |
| `Confirmacao`       | TINYINT      | Confirmação do pedido (0 ou 1) |
| `FormaPagamento`    | VARCHAR      | Forma de pagamento do pedido   |
| `Ped_Internet`      | TINYINT      | Pedido feito pela internet (0 ou 1) |

---

## 📂 Estrutura do Projeto

```bash
📁 projeto-cadastro-pedidos
│
├── conexao.php             # Conexão com o banco de dados
├── index.php               # Página principal (menu)
├── cadastrar_pedido.php    # Página para cadastrar novos pedidos
├── visualizar_pedidos.php  # Página para visualizar os pedidos
├── editar_pedido.php       # Página para editar um pedido
├── excluir_pedido.php      # Página para excluir um pedido
└── README.md               # Documentação do projeto

```

## ⚙️ Configuração do Ambiente

1. **Pré-requisitos**:  
   - PHP 7.4 ou superior  
   - MySQL  
   - Servidor Apache (XAMPP, WAMP, Laragon, etc.)  

2. **Configurar o Banco de Dados**:  
   - Crie um banco de dados chamado `joaovs_livraria`.
   - Execute o seguinte SQL para criar a tabela `pedido`:

```sql
CREATE TABLE pedido (
    Cod_Pedido INT AUTO_INCREMENT PRIMARY KEY,
    Cod_Solicitante INT,
    Confirmacao TINYINT,
    FormaPagamento VARCHAR(255),
    Ped_Internet TINYINT,
    FOREIGN KEY (Cod_Solicitante) REFERENCES solicitante (Cod_Solicitante) ON UPDATE CASCADE
);
```
