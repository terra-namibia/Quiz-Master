import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import Question from './Question';
import registerServiceWorker from './registerServiceWorker';
import { Router, Route, browserHistory } from 'react-router';

ReactDOM.render(
  　<Router history={browserHistory}>
        <Route path="/" component={App} />
        <Route path="/question" component={Question} />
    </Router>, document.getElementById('root'));
registerServiceWorker();
