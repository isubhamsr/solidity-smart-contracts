// SPDX-License-Identifier: MIT

// array
// maping

pragma solidity >=0.4.0 <0.9.0;

contract MyArray {
    uint[] public  arr = [1,2,3];

    string[] public fruits = ["mango","banana","apple"];

    // 2d array
    uint[][] public twodArray = [[1,2,3],[4,5,6]];

    string[] public arr1;

    // we need to create function and then push the value
    function addValue(string memory _value) public {
        arr1.push(_value);
    }

    function getArrayLength() public view returns (uint) {
        return arr1.length;
    }
}