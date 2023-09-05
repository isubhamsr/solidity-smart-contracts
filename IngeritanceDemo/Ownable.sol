// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0; 

contract Ownable {
    address owner;

    constructor() public  {
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Must be owner");
        _;
    }
}