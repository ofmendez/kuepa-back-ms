import { UserController } from '@src/controllers/users.js';
import { MessageController } from '@src/controllers/messages.js';
import { models } from '@src/models/index.js';

const controllers = {
  user: new UserController({ model: models.user }),
  message: new MessageController({ model: models.message })
};

export { controllers };
