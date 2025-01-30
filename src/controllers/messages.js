export class MessageController {
  constructor ({ model }) {
    this.messageModel = model;
  }

  getAll = async (c) => {
    const res = await this.messageModel.getAll({ c });
    return c.json(res.done ? res.results : res.error, res.done ? 200 : 417);
  };

  getAllRaw = async (c) => {
    const res = await this.messageModel.getAll({ c });
    return res.results;
  };

  recordMessage = async (message) => {
    const msg = JSON.parse(message);
    const i = {
      UserId: msg.id,
      SenderName: msg.senderName,
      Content: msg.message,
      CreatedAt: new Date().toISOString(),
    };
    const resultsMessage = await this.messageModel.create({ i });
    if (!resultsMessage.done) // If the message creation fails
      console.log('Message creation failed', resultsMessage.error);
  };
}
