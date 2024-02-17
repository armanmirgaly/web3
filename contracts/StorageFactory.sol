// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStorageArrey;

    function createSimpleStoageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArrey.push(simpleStorage);
    }

    function sfStore (uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        SimpleStorage(address(simpleStorageArrey[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function sfGet (uint256 _simpleStorageIndex) public view returns (uint256) {
        return SimpleStorage(address(simpleStorageArrey[_simpleStorageIndex])).retreive();
    }

}