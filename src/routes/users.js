export const getUserRouter = ({ route, ctrl }) => {
  route.get('/', ctrl.getAll);
  route.post('/', ctrl.create);

  route.get('/:id', ctrl.getById);
  route.delete('/:id', ctrl.delete);
  route.patch('/:id', ctrl.update);
  return route;
};
