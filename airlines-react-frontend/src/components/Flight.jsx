import React, { Component } from 'react';
// import axios from 'axios';
import reservations from '../sample_data/reservations.json'
import plane from '../sample_data/plane.json'
import flight from '../sample_data/flight_1.json'

// const URL = 'https://api.myjson.com/bins/tpnqy'

class Flight extends Component {
  state = {
    reservations: [],
    plane: {},
    flight: {},
    reserved: []
  }

  componentDidMount() {
    this.setState({ reservations, plane, flight })
    // this.loadReservations().then(reservations => this.setState({ reservations }))
  }

  reserve = (row, column) => {

  }

  render() {
    const { reservations } = this.state

    return (<div>flight</div>)

    // return(
    //   <div>
    //     <div></div>
    //     <div>
    //       plane.rows.map(row => {
    //         plane.columns.map(column => {
    //           taken = reservations.has(row, column)
    //           return <Seat available={!taken} reserved
    //             onClick={(row, column) => reserve(row, column)} />
    //         })
    //
    //       })
    //     </div>
    //
    //     <button>Reserve</button>
    //   </div>
    //
    // );
  }
}

export default Flight;
