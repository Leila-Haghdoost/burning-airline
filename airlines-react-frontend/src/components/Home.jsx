import React, {Component} from 'react';
import { Route } from "react-router-dom";
import Search from "./Search";
import Flight from "./Flight"
import User from "./User"


class Home extends Component{
  render() {
    const { user } = this.props

    return(
      <div className="header__wrapper">
        <div>
          <h4>Welcome to</h4>
          <h1>Burning Airlines</h1>
          <div className="img">
              <img src="" alt="Img"/>
          </div>
          {user
            ? (<User user={user}/>)
            : (
            <form>
              <p>Do you have account? Please login below.</p>
              Name:<input type="text" required placeholder="Store Name"/>
              Password:<input type="text" required placeholder="Password"/>
              <button type="Submit">Login</button>
            </form>)
          }
          </div>

          <Route
            exact
            path="/search"
            component={Search}  />
          <Route
            path="/flight/:flightId"
            component={Flight}
          />
      </div>
    );
  }
}

export default Home;
