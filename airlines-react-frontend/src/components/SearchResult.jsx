import React, {Component} from 'react';
import { Link } from "react-router-dom";
import axios from 'axios';

const URL = 'https://api.myjson.com/bins/p5b2y'

class SearchResult extends Component {

  state = {
    flights: []
  };

  componentDidMount(){
    this.fetchFlights();
  }

  fetchFlights(){
  // get the current list of Flights from the server
  axios.get( URL )
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
