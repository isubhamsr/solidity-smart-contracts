// SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0; 
pragma solidity >=0.4.0 <0.9.0;

/**
   * @title ContractName
   * @dev ContractDescription
   * @custom:dev-run-script file_path
   */

contract Counter {
     uint public  count = 1;

    //  constructor() public  {
    //      count = 0; //initilized the count
    //  }

    //  function getCount() public view returns (uint){
    //      return count;
    //  }

     function incrementCount() public  {
         count++;
     }
}