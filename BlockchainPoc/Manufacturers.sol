pragma solidity >=0.4.0 <0.9.0;

contract Manufacturers {

    struct Manufacturer{
        uint id;
        address tokenId;
        string name; 
        string model;
        string color;
        uint year;
        uint price;
    }

    mapping (address => Manufacturer) public manufacturers;

    function setManufacturer(
        uint id,
        address tokenId,
        string memory name ,
        string memory model,
        string memory color,
        uint year,
        uint price
        ) public {
        // Manufacturer memory  manufacturer = Manufacturer(
        //     id, tokenId, name, model, color, year, price
        // );

        manufacturers[tokenId] = Manufacturer(
            id, tokenId, name, model, color, year, price
        );
    }
}