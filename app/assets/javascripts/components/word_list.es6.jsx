class RabbitsIndex extends React.Component {
  propTypes: {
    words: React.PropTypes.object
  }

  render() {
    return (
      <div>
      { this.props.words.map((word) =>
        <WordShow key={word.id} name={word.word} />
      )}
      </div>
    )
  }
}
