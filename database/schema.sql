CREATE TABLE IF NOT EXISTS users (
 id SERIAL PRIMARY KEY,
 username VARCHAR(80) UNIQUE NOT NULL,
 password_hash TEXT NOT NULL,
 role VARCHAR(30) NOT NULL DEFAULT 'admin',
 created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS assets (
 id SERIAL PRIMARY KEY,
 patrimonio VARCHAR(100) UNIQUE NOT NULL,
 numero_serie VARCHAR(150) UNIQUE NOT NULL,
 tipo VARCHAR(80) NOT NULL,
 fabricante VARCHAR(100),
 modelo VARCHAR(120),
 localizacao VARCHAR(150),
 responsavel VARCHAR(150),
 status VARCHAR(30) NOT NULL DEFAULT 'Em estoque' CHECK (status IN ('Em uso','Em estoque','Em manutenção','Baixado')),
 observacoes TEXT,
 created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
 updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_assets_status ON assets(status);
CREATE INDEX IF NOT EXISTS idx_assets_tipo ON assets(tipo);
