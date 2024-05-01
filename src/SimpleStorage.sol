// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// Declaration of the contract named "SimpleStorage"
contract SimpleStorage {
    // A state variable to store a number
    uint256 myFavoriteNumber;

    // A mapping to associate names (string) with numbers (uint256)
    mapping(string => uint256) public nameToFavoriteNumber;

    // A struct representing a person with a favorite number and name
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // A dynamic array to store multiple Person structs
    Person[] public listPeople;

    // Function to store a number in the state variable
    function store(uint256 favoriteNumber) public {
        myFavoriteNumber = favoriteNumber;
    }

    // Function to retrieve the stored number
    function retrive() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // Function to add a new person to the list and update the mapping
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
