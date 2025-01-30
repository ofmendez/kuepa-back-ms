export const getMessagesRouter = ({ route, ctrl }) => {
  route.get('/', ctrl.getAll);
  return route;
};
