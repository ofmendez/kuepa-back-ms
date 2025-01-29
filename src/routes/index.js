import { createUserRouter } from '@src/routes/users.js';

function createRouter ({ app, controllers }) {
  createUserRouter({ route: app.route('/users'), ctrl: controllers.user });
}

export { createRouter };
