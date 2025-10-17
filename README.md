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
- Chaves primárias e estrangeiras (`PRIMARY KEY`, `FOREIGN KEY`)
- Inserção e manipulação de dados (`INSERT INTO`)
- Filtros (`WHERE`)
- Ordenação (`ORDER BY`)
- Agrupamentos e filtros de grupo (`GROUP BY`, `HAVING`)
- Junções (`JOIN`)
- Atributos derivados (expressões no `SELECT)`

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
│   ├── diagrama-eer.png           *--> Imagem do diagrama*  
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

