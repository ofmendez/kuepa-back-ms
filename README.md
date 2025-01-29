# Prueba tecnica para Kuepa (BACKEND)

## Publicado en

[]()

## Desarrollo

### Prerequisitos

- Bun
- SQLite

### Para instalar dependencias

```sh
bun i
```

### Para ejecutar entorno de desarrollo

Configurar el archivo .env.development tal como el archivo de referencia example.env.development.

```sh
bun run seed-local
bun run dev
```

abrir: <http://localhost:8888>

### Para ejecutar test

```sh
bun run seed-local
bun test
```

### Para desplegar

```sh
bun run seed
bun run build
```

Ejecutar en servidor:

```sh
bun dist/_worker.js
```

Para usar PM2 con Bun:

```sh
pm2 start --interpreter bun ./dist/_worker.js
```

O usando Wrangler para Github workers con la cuenta configurada:

```sh
bunx wrangler workers deploy dist
```
