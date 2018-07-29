import React from 'react'
import AnswersContainer from './AnswersContainer'
import Header from './Header'
import axios from 'axios'

class QuestionMain extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      answers: [],
      userAnswer: '',
      result: ''
    }
    this.addTodo = this.addTodo.bind(this);
    this.updateUserAnswer = this.updateUserAnswer.bind(this);
  }

  updateUserAnswer(e) {
    this.setState({
      userAnswer: e.target.value  //formの入力値をリアルタイム反映
    });
  }

  addTodo(e) {
    e.preventDefault(); //画面遷移無効

    const correct_answers = this.state.answers.map((data) => {
      return data.answer;
    })

    if (this.state.userAnswer == correct_answers[0] ) {
      this.setState({
        result: 'correct'
      });}
    else {
      this.setState({
        result: 'not_correct'
      });
    }

  }

  render() {
    return (
      <div className='app-main'>
        <Header
        />
        <AnswersContainer
         answerData={ this.state.answers }
         userAnswer={this.state.userAnswer}
         result={this.state.result}
         addTodo={this.addTodo}
         updateUserAnswer={this.updateUserAnswer}
        />
      </div>
    );
  }

  componentDidMount() {
      axios.get('http://localhost:3001/answer_json')
      .then((results) => {
        console.log(results)
        this.setState({answers: results.data})
      })
      .catch((data) =>{
        console.log(data)
      })
    }

}

export default QuestionMain
