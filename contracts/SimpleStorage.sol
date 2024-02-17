// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleStorage {

    uint256 public favouriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
        uint256 age;
    }

    People[] public people;
    mapping (string => uint256) public nameToFavoriteNumber;
    
    function store (uint256 _favoriteNumber) public {
        favouriteNumber = _favoriteNumber;
    }

    function retreive () public view returns (uint256) {
        return favouriteNumber;
    }

    function addPerson (uint256 _favoriteNumber, string memory _name, uint256 _age) public {
        people.push(People(_favoriteNumber,_name, _age));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    fallback() external {
        revert("Fallback function called. This contract does not accept Ether.");
    }

}