class WordBox extends React.Component {
  constructor(props) {
      super(props);
  }
  render () {
    return (
      <div className="panel panel-primary">
        <div className="panel-heading">
          <h3 className="panel-title">
            {this.props.word}
            {this.props.pronunciation}
            <a href={this.props.wav_url}>
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
