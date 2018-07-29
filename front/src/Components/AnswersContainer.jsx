import React from 'react'
import ViewAnswer from './ViewAnswer'

class AnswersContainer extends React.Component {
  render() {
    return(
      <div className='answerList'>
         {this.props.answerData.map((data) => {
           return(
               <ViewAnswer
                data={ data } key={ data.id }
                userAnswer={this.props.userAnswer}
                result={this.props.result}
                addTodo={this.props.addTodo}
                updateUserAnswer={this.props.updateUserAnswer}
               />
           )
         })}
      </div>
    )
  }
}

export default AnswersContainer
