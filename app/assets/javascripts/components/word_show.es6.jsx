class WordShow extends React.Component {
  render () {
    return (
      <div>
        <div>Word: {this.props.word}</div>
      </div>
    );
  }
}

WordShow.propTypes = {
  word: React.PropTypes.string
};
