pragma solidity >=0.4.0 <0.9.0;

contract SalesAgreements {

    address public owner;

    struct SalesAgreement{
        uint id;
        string dealer;
        address delaerTokenId;
        string financer;
        string[] items;
    }

    string[] private items;

    // mapping (address => SalesAgreement) public salesAgreements;
    mapping (address => mapping (uint => SalesAgreement)) public salesAgreements;

    constructor(){
        owner = msg.sender;
    }

    function setItems(string memory item) public  {
        items.push(item);
    }

    function itemLength () view public returns(uint) {
        return (items.length);
    }
    

    function submitSalesAgreement(
        uint id,
        string memory dealer,
        address delaerTokenId,
        string memory financer
        // string[] memory items
    ) public {

        SalesAgreement storage sales = salesAgreements[owner][id];

        sales.id = id;
        sales.dealer = dealer;
        sales.delaerTokenId = delaerTokenId;
        sales.financer = financer;
        // sales.items.push(financer);
        for (uint256 i = 0; i < items.length; i++){
            sales.items.push(items[i]);
        }
        
        delete items;

        // salesAgreements[owner][id] = SalesAgreement(
        //     id, dealer, delaerTokenId, financer, items
        //     );
    }

    function getItems(uint id) public returns (string[] memory) {
        SalesAgreement storage sales = salesAgreements[owner][id];

        return (sales.items);
    }

    function getSalesAgreement(address ownerId, uint id) public returns (
        uint, string memory, address, string memory, string[] memory
    ) {
        SalesAgreement storage sales = salesAgreements[ownerId][id];

        return (
            sales.id, sales.dealer, sales.delaerTokenId, sales.financer, sales.items
        );
    }
}