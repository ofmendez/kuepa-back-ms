# Prueba tecnica para Kuepa (BACKEND)

## Vista front publicada en

[https://kuepa-front-ms.pages.dev/](https://kuepa-front-ms.pages.dev/)

## Desarrollo Backend

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

Tener en cuenta que los usuarios del archivo semilla de producción dependen del token.

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
