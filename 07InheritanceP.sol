// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Ownable {

    address owner;

    constructor() public  {
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "must be owner");
        _;
    }
    
}

contract SecretValut {
    string secret;

    constructor(string memory _secret) public  {
        secret = _secret;
    }

    function getSecretValue() public view returns (string memory) {
        return secret;
    }
}

contract InheritanceP is Ownable {
    string secret;
    address secrectValut;

    constructor(string memory _secret) public  {
        SecretValut _secretValut = new SecretValut(_secret);
        secrectValut = address(_secretValut); // store the address of the secretvalut contract address
        super; // it will call the parent constructor
    }

    function getSecretValue() public view onlyOwner returns (string memory) {
        SecretValut _secretValut = SecretValut(secrectValut); // call the contract withh address
        // return secrectValut.getSecretValue();
        return _secretValut.getSecretValue();
    }
}