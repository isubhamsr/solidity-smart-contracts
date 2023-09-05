// pragma solidity >=0.4.0 <0.9.0;
pragma solidity >=0.4.0 <0.9.0;

import "Minter.sol";

contract Manufacturers {

    Minter _mint = new Minter();

    function getAllProductsByManufacturer(string memory _brandName) {
        
    }

    // struct Manufacturer{
    //     uint id;
    //     address tokenId;
    //     string name; 
    //     string model;
    //     string color;
    //     uint year;
    //     uint price;
    // }

    // mapping (address => Manufacturer) public manufacturers;

    // function setManufacturer(
    //     uint id,
    //     address tokenId,
    //     //address owner, // manufacturer address -> bank or customar
    //     string memory name ,
    //     string memory model,
    //     string memory color,
    //     uint year,
    //     uint price
    //     ) public {
    //     // Manufacturer memory  manufacturer = Manufacturer(
    //     //     id, tokenId, name, model, color, year, price
    //     // );


    //     manufacturers[tokenId] = Manufacturer(
    //         id, tokenId, name, model, color, year, price
    //     );
    // }
}

// 0xa723d0b40c7B257dBc7e336580950A1630fd2117