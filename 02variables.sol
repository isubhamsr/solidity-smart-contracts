// SPDX-License-Identifier: MIT

// variable
// data type
// custom data structure

pragma solidity ^0.8.0;

contract MyVeriable {
    // state variables
    uint public  myValue = 1; // if we add public solidity create function for this vriable
    // state variable store in blockchain
    string public myString = "Hello";

    // we can store address also
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // structure
    struct Person{
        uint id;
        string name;
    }

    // using the structure
    Person public person1 = Person(1, "subham");
    Person public person2 = Person(2, "ramesh");

    // local veriable (inside a function)

    function getValue() public pure returns (uint) { // pure is immutebility
        uint value = 1;
        return value;
    }
}

