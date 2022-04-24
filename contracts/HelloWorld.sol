//SPDX-License-Identifier: MIT - Copyright issues

pragma solidity ^0.8.0; //compile version must be upper and equal solidity 0.8.0

contract HelloWorld { // contract name

    uint public number; // declaring unsigned integer variable. uint means 0 and all positive numbers. public means everybody read this variable on blockchain.

    function storeNumber(uint _number) public { 
        number = _number;
    }

    function retrieveNumber() public view returns(uint) { //view means only read, dont modify. this function return uint.
        return number;
    }
}