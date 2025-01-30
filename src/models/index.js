import { UserModel } from '@src/models/sqlite/user.js';
import { MessageModel } from '@src/models/sqlite/message.js';
import { db } from '@src/db/db.js';

const models = {
  user: new UserModel(),
  message: new MessageModel(),
};
Object.values(models).forEach((model) => model.setEnv({ db }));

export { models };
