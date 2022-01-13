pragma solidity ^0.6.0;

contract bookShelf {
    mapping (int => string) public person;
    mapping (uint => book) public books;
    mapping (address => mapping(uint => book)) public myBooks;

    struct book {
        string title;
        string bookName;
    }

    constructor() public {
        person[1] = "Ven";
        books[1] = book("Hello","Sriya");
    }

    function addPerson(int id, string memory name) public {
       person[id] = name;
    }

    function addbook(uint id, string memory title, string memory bookName) public {
        books[id] = book(title, bookName);
    }

    function addlibrary(uint id,  string memory title, string memory bookName) public {
        myBooks[msg.sender][id] = book(title, bookName);
    }

  
  
   

}