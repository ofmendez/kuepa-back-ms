const clients = new Set();

export const CreateWsEndpoint = ({ app, upgradeWebSocket, msgController }) => {
  app.get('/ws', upgradeWebSocket((c) => {
    return {
      onMessage (event, ws) {
        const message = event.data;
        msgController.recordMessage(message);
        clients.forEach(client => {
          if (client !== ws && client.readyState === WebSocket.OPEN)
            client.send(message);
        });
      },
      onOpen (_event, ws) {
        clients.add(ws);
      },
      onClose (ws) {
        clients.delete(ws);
        console.log('WebSocket connection closed');
      },
    };
  }));
};
