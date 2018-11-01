import React, {Component} from 'react';
import { Link } from "react-router-dom";
import axios from 'axios';



class FlightDetails extends Component {

  state = {
    id: []
  };

  componentDidMount(){
    this.fetchFlights();
  }




fetchFlights(){
// get the current list of Flights from the server
  axios.get( URL, { params: {
    id: this.props.match.params.id,
  } })
  .then( response => {
    console.log( response );
    this.setState({ flights: response.data });
  })
  .catch( console.warn );

};

render(){
  return(
    <div>
    <h3>Flight number: { this.props.match.params.id } </h3>
  </div>
  );

  }

}

export default FlightDetails;
