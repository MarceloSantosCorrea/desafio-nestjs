# Desafio Nest.js - Imersão 13 - Full Stack && Full Cycle

## Informações do desafio

Neste desafio, foi criado uma aplicação Nest.js com Docker que roda na porta 3000.

Esta aplicação expõe 4 rotas de API Rest:

    • Criar assets - POST /api/assets
    • Listar assets - GET /api/assets
    • Criar orders - POST /api/orders
    • Listar orders - GET /api/orders

Um asset tem os seguintes dados:

    • id - (é informado pelo usuário)
    • symbol - (símbolo do ativo)

Uma order tem os seguintes dados:

    • id - automático do banco
    • asset_id - (relacionado com Asset)
    • price
    • status - (open, pending, closed)

O ORM usado é o Prisma ORM e o banco de dados Mongo, image: bitnami/mongodb:5.0.17

## Instalação
```
git clone https://github.com/MarceloSantosCorrea/desafio-nestjs.git
```
```
docker composer up -d
```