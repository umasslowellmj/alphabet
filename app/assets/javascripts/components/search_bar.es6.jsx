class SearchBar extends React.Component {
  constructor(props) {
      super(props);
      this.state = { value: '' };
  }
  handleChange(event){
    this.setState({value: event.target.value});
  }
  handleSubmit(event) {
    window.location.href = window.location.origin + "/search/" + this.state.value
  }
  handleKeyPress(event) {
    if (event.charCode == 13) {
      window.location.href = window.location.origin + "/search/" + this.state.value
    }
  }
  render () {
    return (
      <div className="input-group">
        <input type="text" className="form-control" placeholder="Search a word" onChange={event => this.handleChange(event)} onKeyPress= {event => this.handleKeyPress(event)} value={this.state.value} />
        <span className="input-group-btn">
         <button className="btn btn-primary" type="button" onClick={event => this.handleSubmit(event)}>
           <span className="glyphicon glyphicon-search"></span>
         </button>
        </span>
      </div>
    );
  }
}
