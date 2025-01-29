import { UserModel } from '@src/models/sqlite/user.js';
import { db } from '@src/db/db.js';

const models = {
  user: new UserModel(),
};
Object.values(models).forEach((model) => model.setEnv({ db }));

export { models };
