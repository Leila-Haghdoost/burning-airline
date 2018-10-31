import React from "react";
import { BrowserRouter, Route, Switch } from "react-router-dom";
import Home from "./Home"
import NotFound from "./NotFound";

import SearchResult from './SearchResult';
import Search from './Search';

const Routes = ({user}) => (
  <BrowserRouter>
    <div>
      <Route exact path="/" render={routerProps => <Home {...routerProps} user={user} />} />
      <Route path="/search" component={Search} />
      <Route path="/search/:origin/:destination" component={SearchResult} />
        { /*  /search/paris/barcelona   */}
      </div>
  </BrowserRouter>
);

export default Routes;
