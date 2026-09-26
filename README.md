# Inventário TI

Mini sistema profissional para controle de ativos de TI, com login, dashboard, cadastro, edição, exclusão, filtros e exportação CSV.

## Stack
- HTML5 / CSS3 / JavaScript
- Node.js + Fastify
- PostgreSQL
- JWT + bcrypt

## 1. Criar o banco PostgreSQL
```sql
CREATE USER inventario_user WITH PASSWORD 'SUA_SENHA_FORTE';
CREATE DATABASE inventario_ti OWNER inventario_user;
```

## 2. Configurar
```bash
npm install
cp .env.example .env
```
Edite `.env` e defina `DATABASE_URL`, `JWT_SECRET`, `ADMIN_USER` e `ADMIN_PASSWORD`.

## 3. Criar tabelas e administrador
```bash
npm run db:init
```

## 4. Executar
```bash
npm start
```
Acesse `http://localhost:3000`.

## Segurança
O `.env` está ignorado pelo Git. Nunca envie senhas reais, `JWT_SECRET` ou `DATABASE_URL` com credenciais para o repositório.
