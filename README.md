# BeStrong Backend API

Workout plan generáló backend API.

## Lokális futtatás

```bash
npm install
npm start
```

A server a `http://localhost:3000` címen fut.

## API Endpoints

- `GET /health` - Health check
- `POST /api/workouts/generate` - Workout plan generálása

## Render.com Deploy

1. Töltsd fel ezt a mappát egy GitHub repository-ba
2. Render.com-on hozz létre egy új Web Service-t
3. Build Command: `npm install`
4. Start Command: `npm start`
5. Render automatikusan beállítja a PORT változót

Hozzáférés után: `https://your-app.onrender.com`
