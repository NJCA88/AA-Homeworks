import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    //your code here
    this.setNum1 = this.setNum1.bind(this);
    this.state = { result: 0, num1: "", num2: ""};
  }

  //your code here
  setNum1(e){
    const num1 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ num1 });
  }

  setNum22(e) {
    let num2 = e.target.value ? parseInt(e): ""
    this.setState({num2})
  }


  render(){
    const { num1, num2, result } = this.state;
    return (
      <div>
        <h1>Hello World</h1>
        <h2>{this.state.result}</h2>
        //your code will replace this
        <input onChange={this.setNum1} value={num1}/>


      </div>
    );
  }
}

export default Calculator;
