class WordBox extends React.Component {
  constructor(props) {
      super(props);
  }
  handleOnClick(event) {
    var audio = new Audio(this.props.wav_url);
    audio.play();
  }
  render () {
    return (
      <div className="panel panel-primary">
        <div className="panel-heading">
          <h3 className="panel-title">
            {this.props.word}
            {this.props.pronunciation}
            <a onClick={event => this.handleOnClick(event)}>
               <i className="fa fa-volume-up" aria-hidden="true"></i>
            </a>
          </h3>
        </div>
        <div className="panel-body">
          {this.props.type}
          {this.props.def}
        </div>
      </div>
    )
  }
}
