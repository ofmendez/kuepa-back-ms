import { UserController } from '@src/controllers/users.js';
import { models } from '@src/models/index.js';

const controllers = {
  user: new UserController({ model: models.user }),
};

export { controllers };
