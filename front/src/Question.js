import React, { Component } from 'react';
import AnswerMain from './Components/AnswerMain'
import './App.css';



class Question extends Component {
  render() {
    return (
      <div className="App">
        <AnswerMain/>
      </div>
    );
  }
}

export default Question;