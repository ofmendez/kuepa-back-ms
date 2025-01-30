const clients = new Set();
const KEEP_ALIVE_INTERVAL = 30000; // 30 seconds

export const CreateWsEndpoint = ({ app, upgradeWebSocket, msgController }) => {
  app.get('/ws', upgradeWebSocket((c) => {
    const keepAlive = (ws) => {
      if (ws.readyState === WebSocket.OPEN)
        ws.send(JSON.stringify({ type: 'ping' }));
    };

    const interval = setInterval(() => {
      clients.forEach(keepAlive);
    }, KEEP_ALIVE_INTERVAL);

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
        clearInterval(interval);
        console.log('WebSocket connection closed');
      },
    };
  }));
};
