import React, { Component, Button } from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import Form from "react-bootstrap/Form";
import { Link } from "react-router-dom";

class StaffBio extends Component {
  state = {
    listOfStaff: [],
    currStaff: {},
    //currShiftRec: {}
  };

  componentDidMount() {
    this.getAllStaff();
  }

  getAllStaff = () => {
    fetch("http://localhost:4000/employee")
      .then(response => response.json())
      .then(response => {
        this.setState({ listOfStaff: response.data });
        this.setState({ currStaff: this.state.listOfStaff[0] });
//        this.getShiftRec(this.state.currStaff.empID);
        console.log("***DEBUG MSG: get all staff - currStaff name:" + response.data[0].name );
      })
      .catch(err => console.error(err));
  };

//  getShiftRec = (empID) => {
//    fetch("http://localhost:4000/shiftrecord/" + empID)
//      .then(response => response.json())
//      .then(response => {
//        this.setState({ currShiftRec: response.data[0] });
//        console.log("***DEBUG MSG: succeeded in getting shift record of empID: " + empID + " shiftID: " + response.data[0].shiftID );
//      })
//      .catch(err => console.error(err));
//  };

  handleStaffSelection = (empID) => {
    fetch("http://localhost:4000/employee/" + empID)
      .then(response => response.json())
      .then(response => {
        this.setState({ currStaff: response.data[0] });
        //this.getShiftRec(empID);
        console.log("***DEBUG MSG: Handle Staff Selection - new current staff: " + response.data[0].name );
      })
      .catch(err => console.error(err));
  };

  render() {
    const divStyleLeft = {
      float: 'left',
      width: '60%'
    };
    const divStyleRight = {
      float: 'right',
      width: '40%'
    };

    return (
      <div style={{ position: "absolute", left: "20%", top: "10%" }}>
          <h1>Staff Directory</h1>
          <br/>
          <div style={divStyleRight}>
              <h3>{this.state.currStaff.name}</h3>
              <div/>
              <strong>Position: </strong>{this.state.currStaff.position}
              <div/>
              <strong>Phone#: </strong>{this.state.currStaff.phone}
              <div/>
              <strong>Employee ID#: </strong>{this.state.currStaff.empID}
              <div/>
              <br/>

          </div>

          <div style={divStyleLeft}>
            {this.state.listOfStaff.map( staff => (
              <ul>
                <button
                  className="btn btn-primary btn-lg m-2"
                  onClick={() => this.handleStaffSelection(staff.empID)}
                >
                  {staff.name}
                </button>
              </ul>
                )
            )}
          </div>

          <Link to="/addstaff">
            <button
              type="submit"
              className="btn btn-outline-primary btn-lg"
            >
              Add Staff
            </button>
          </Link>
          <br/>
          <br/>
          <Link to={{
            pathname: "/deletestaff",
            state: {
              empID: this.state.currStaff.empID
            }
          }}>
            <button
              type="submit"
              className="btn btn-outline-primary btn-lg"
            >
              Delete Staff
            </button>
          </Link>
          <br/>
          <br/>
          <Link to={{
            pathname: "/editstaff",
            state: {
              empID: this.state.currStaff.empID
            }
          }}>
            <button
              type="submit"
              className="btn btn-outline-primary btn-lg"
            >
              Edit Staff
            </button>
          </Link>
        </div>


    );
  }
}

export default StaffBio;
