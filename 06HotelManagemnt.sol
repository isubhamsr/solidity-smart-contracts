// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelManagement {
    // can book room
    // pay for the room
    // after pay for the room rom will be allocated autometic
    // send payment to owner

    // Ether pay - smart contracts
    // modifier
    // visibility
    // enums
    // events, it allows to external comsumer to subcribe them

    address payable public owner;

    enum Statuses {Vacant, Occupied }
    Statuses currentStatus;

    // after paying this event will emmit, with occupant address and payed amount
    event Occupy(address _occupent, uint _amount);

    constructor() public  {
        owner = payable(msg.sender); // the owner of blockchain who deploy the SC
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant{
        // check status

        require(currentStatus == Statuses.Vacant, "Currently Occupied");
        _;
    }

    modifier cost(uint _amouunt){
        // check price, right amont pay or not

        require(msg.value >= _amouunt, "Not enough ether" );
        _;
    }

    // we just send the eth in this function or address from out wallet
    receive() external payable onlyWhileVacant cost(2 ether) { // both this modifier will run before this code will run

        currentStatus = Statuses.Occupied;
        // pay the owner to book the room
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }

    // book room
    // function booking() public payable onlyWhileVacant cost(2 ether) { // both this modifier will run before this code will run
        
    //     // check status
    //     // require(currentStatus == Statuses.Vacant, "Currently Occupied");
    //     // check price, right amont pay or not
    //     // require(msg.value >= 2 ether, "Not enough ether" );
    //     // ^^ this moved in modifiers

    //     currentStatus = Statuses.Occupied;
    //     // pay the owner to book the room
    //     owner.transfer(msg.value);
    //     emit Occupy(msg.sender, msg.value);
    // }
}