import React from 'react'
import marked from 'marked'

class ViewAnswer extends React.Component {

  render() {
    var rawMarkup = marked(this.props.data.content.toString(), {sanitize: true});
    return(
      <div>
        <span dangerouslySetInnerHTML={{__html: rawMarkup}} />
        <form onSubmit={this.props.addTodo}>
          <input type="text" value={this.props.userAnswer} onChange={this.props.updateUserAnswer}/>
          <input type="submit" value="回答する"/>
        </form>
        <span>{ this.props.result }</span>
      </div>
    )
  }
}

export default ViewAnswer
