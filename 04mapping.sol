pragma solidity >=0.4.0 <0.9.0;

contract MyMapping {
    mapping (uint => string) public names;
    mapping (uint => Book) public book;

    // nested mapping
    // mapping(key => mapping(key => value))
    mapping (address => mapping (uint => Book)) public myBooks;
    // key is your address and nested with your number of book
    // book = {
    //     0x5B38Da6a : {
    //         {1 : Book("c", "Subham")},
    //         {2 : Book("c++", "Ramesh")},
    //     }
    // }

    struct Book{
        string title;
        string author;
    }

    constructor() {
        names[1] = "Adam";
        names[2] = "Subham";
        names[3] = "Ramesh";
        names[4] = "Suresh";
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        book[_id] = Book(_title, _author);
    }

    function addMyBook(uint _id, string memory _title, string memory _author) public  {
        // msg.sender gives the sender address
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}