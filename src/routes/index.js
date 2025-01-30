import { getUserRouter } from '@src/routes/users.js';
import { getMessagesRouter } from '@src/routes/messages.js';
import { Hono } from 'hono';

function createRouter ({ app, controllers }) {
  const routeUsers = new Hono().basePath('/users');
  const routeMessages = new Hono().basePath('/messages');
  app.route('/', getUserRouter({ route: routeUsers, ctrl: controllers.user }));
  app.route('/', getMessagesRouter({ route: routeMessages, ctrl: controllers.message }));
}

export { createRouter };
