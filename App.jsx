import React, { Component } from "react";
import { Switch, Route } from "react-router-dom";
import WelPage from "./WelPage";
import Login from "./Login";
import MainPage from "./MainPage";
import SingleOrder from "./SingleOrder";
import ManageLogin from "./ManageLogin";
import ManageMenu from "./ManageMenu";
import StaffBio from "./StaffBio";
import AddStaff from "./AddStaff";
import DeleteStaff from "./DeleteStaff";
import EditStaff from "./EditStaff";
import StaffLogin from "./StaffLogin";

class App extends Component {
  state = {};
  render() {
    return (
      <React.Fragment>
        <Switch>
          <Route exact path="/" component={WelPage}></Route>
          <Route path="/login" component={Login}></Route>
          <Route path="/main" component={MainPage}></Route>
          <Route path="/staff" component={StaffLogin}></Route>
          <Route path="/staffpage" component={StaffBio}></Route>
          <Route path="/addstaff" component={AddStaff}></Route>
          <Route path="/deletestaff" component={DeleteStaff}></Route>
          <Route path="/editstaff" component={EditStaff}></Route>
          <Route path="/managelogin" component={ManageLogin}></Route>
          <Route path="/managemenu" component={ManageMenu}></Route>
          <Route path="/order" component={SingleOrder}></Route>
        </Switch>
      </React.Fragment>
    );
  }
}

export default App;
