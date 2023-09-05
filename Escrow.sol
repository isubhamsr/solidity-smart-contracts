// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Escrow {
    address escrowAgent; // owner of the blockchain who deploy it

    mapping (address => uint256) public deposits;

    constructor() public  {
        escrowAgent = msg.sender;
    }

    modifier onlyAgent(){
        require(msg.sender == escrowAgent, "Only escrow agent allow");
        _;
    }

    function deposit(address payee) public payable onlyAgent {
        uint256 amount = msg.value;
        deposits[payee] = deposits[payee] + amount; 
    }

    function withdraw(address payable  payee) public onlyAgent {
        uint256 payment = deposits[payee];
        deposits[payee] = 0;
        payee.transfer(payment);
    }
}