class SearchBar extends React.Component {
  render () {
      return (
        <div className="input-group">
           <input type="text" className="form-control" placeholder="Search a word" />
           <span className="input-group-btn">
               <button className="btn btn-primary" type="button">
                   <span className="glyphicon glyphicon-search"></span>
               </button>
           </span>
        </div>
      );
    }
}
