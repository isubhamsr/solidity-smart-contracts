// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 

contract MyControlStm {

    uint[] public nums = [1,2,3,4,5,6,7,8,9,10];

    function countEvenNumbers() public view returns (uint) {
        uint count = 0;

        for(uint i = 0; i<nums.length; i++){
            // if(nums[i] % 2 == 0){
            if(isEven(nums[i])){
                count++;
            }
        }
        return count;
    }

    function isEven(uint number) pure public returns (bool) {
        if (number % 2 == 0) {
            return true;
        } else {
           return false;
        }
    }
}