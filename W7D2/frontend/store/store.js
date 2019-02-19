import { createStore } from 'redux';
import rootReducer from '../reducers/root_reducer';
import { applyMiddleware } from 'redux';

const configureStore = (preloadedState = {}) => {

  const addLoggingToDispatch = (store) => {
    const originalDispatch = store.dispatch;
    return (action) => {
      console.log(store.getState());
      console.log(action);
      originalDispatch(action);
      console.log(store.getState());
    }
  }

  const store = createStore(rootReducer, preloadedState, applyMiddleware(addLoggingToDispatch));
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
}

export default configureStore;
