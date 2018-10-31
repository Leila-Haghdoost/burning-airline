import React, { Component } from 'react';
import SearchResult from './SearchResult';
// import flights from '../sample_data/flights.json';

class Search extends Component {
  originRef = React.createRef();
  destinationRef = React.createRef();


  handleClick = () => {
    // console.log(this.destinationRef.current.value, this.destinationRef.current.value)
    // this.setState({showResult: true, result: flights})
    // this.fetchFlights();
    this.props.history.push(`/search/${this.originRef.current.value}/${this.destinationRef.current.value}`);
  }


  render() {
    return(
      <div>
        <h2>Flight Search</h2>
        <div>
          Origin: <input ref={this.originRef} type="text"/>
          Destination: <input ref={this.destinationRef} type="text"/>
        </div>
        <button onClick={this.handleClick}>Search</button>
        {/* this.state.flights.length &&
          <SearchResult flights={this.state.flights} />
        */}
      </div>
    );
  }
}
export default Search;
