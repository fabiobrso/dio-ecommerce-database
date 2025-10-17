# Banco de Dados - E-commerce

Projeto completo de modelagem e implementação de um **banco de dados relacional para um sistema de e-commerce**, desenvolvido no **MySQL Workbench**.  

---

## 📌 Objetivo
O objetivo é representar um cenário realista de uma loja virtual com clientes, produtos, pedidos, pagamentos, vendedores, fornecedores e controle de estoque.

---

## 🧩 Estrutura do Banco
O banco de dados `ecommerce` é composto pelas seguintes entidades principais:

- **clients** → informações de clientes  
- **product** → catálogo de produtos  
- **orders** → pedidos realizados  
- **payments** → formas de pagamento  
- **supplier** → fornecedores  
- **seller** → vendedores/lojistas  
- **productStorage** → controle de estoque  
- **tabelas de relacionamento** → (productSeller, productOrder, productSupplier, storageLocation)

---

## 🧠 Conceitos SQL Praticados

- Criação de banco e tabelas (`CREATE DATABASE`, `CREATE TABLE`)
- Modelagem relacional com chaves primárias, estrangeiras e tabelas associativas (`PRIMARY KEY`, `FOREIGN KEY`).
- Criação de tabelas com constraints e tipos adequados.
- Inserção e Manipulação de dados (`INSERT`, `UPDATE`, `DELETE` e `SELECT`).
- Consultas com filtros `WHERE`, junções `JOIN` e ordenações `ORDER BY`.
- Funções e expressões para atributos derivados e cálculos `SUM` e `COUNT`.
- Agrupamentos com `GROUP BY` e `HAVING`.
- Controle de integridade referencial e uso de `ENUM` para domínios fixos.

---

## 🗂️ Diagrama EER

Diagrama exportado do MySQL Workbench mostrando as relações entre as entidades do sistema.

---

## 📂 Estrutura do Repositório

📦 dio-ecommerce-database  
│  
├── scripts/  
│   ├── create_database.sql        *--> Criação do banco e tabelas*  
│   ├── insert_data.sql            *--> Inserção dos dados fictícios*  
│   └── sample_queries.sql         *--> Consultas de prática (SELECT, WHERE, JOIN etc.)*  
│  
├── docs/  
│   ├── diagrama-eer-ecommerce.png  *--> Imagem do diagrama*  
│   └── projeto-eer-ecommerce.mwb   *--> Arquivo MySQL WorkBench*  
│  
└── README.md

--- 

## 🛠️ Ferramentas Utilizadas
- **MySQL Workbench** → modelagem conceitual e refinamento do diagrama.  
- **MySQL** → implementação das tabelas e constraints.  

---

## 📝 Autor

Desenvolvido por **Fábio Barros de Oliveira** para o desafio DIO.  
📅 Outubro / 2025

