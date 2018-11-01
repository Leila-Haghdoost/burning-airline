import React, {Component} from 'react';
import { Link } from "react-router-dom";
import axios from 'axios';

const URL = 'http://localhost:3000/flights.json';

class SearchResult extends Component {

  state = {
    flights: []
  };

  componentDidMount(){
    this.fetchFlights();
  }

  fetchFlights(){
  // get the current list of Flights from the server
    axios.get( URL, { params: {
      origin: this.props.match.params.origin,
      destination: this.props.match.params.destination
    } })
    .then( response => {
      console.log( response );
      this.setState({ flights: response.data });
    })
    .catch( console.warn );

  } // fetchFlights()

  render() {
    const { flights } = this.state;
    return(
      <div>
        <h2>Flight Search Results</h2>
        <h3>Origin: { this.props.match.params.origin } </h3>
        <h3>Destination: { this.props.match.params.destination } </h3>
        <h3>ID: {this.props.match.params.id}</h3>
        <table>
          <thead>
            <tr>
              <th>Date</th>
              <th>Flight</th>
              <th>From > To</th>
              <th>Plane</th>
            </tr>
          </thead>
          <tbody>
            {flights.map((flight, index) => {
              console.log('SearchResults .map():', flight);
              return (
                <tr key={index}>
                  <td>{flight.date}</td>
                  <td>
                    <Link to={`/flight/${flight.id}`}>{flight.flightnum}</Link>
                  </td>
                  <td>{flight.origin} > {flight.destination}</td>
                  <td>{flight.plane_id}</td>
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>
    );
  }
}
export default SearchResult;
