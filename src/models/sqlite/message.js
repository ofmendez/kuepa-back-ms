export class MessageModel {
  setEnv ({ db }) {
    this.db = db;
  }

  async getAll ({ c }) {
    try {
      const results = this.db.query('SELECT * FROM Messages').all();
      return { done: true, results };
    } catch (error) {
      return { done: false, error };
    }
  }

  async create ({ i }) {
    try {
      const query = this.db.query(
        'INSERT INTO Messages ( Content, UserId, SenderName, Content, CreatedAt) VALUES (?1, ?2, ?3, ?4, ?5)'
      );
      const result = query.all(i.Content, i.UserId, i.SenderName, i.Content, i.CreatedAt);
      return { done: true, results: result };
    } catch (error) {
      return { done: false, error };
    }
  }
}
