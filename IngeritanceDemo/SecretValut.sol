// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract SecretVault {
    string secret;

    constructor(string memory _secret) public  {
        secret = _secret;
    }

    function getSecretValue() public view returns (string memory) {
        return  secret;
    }
}