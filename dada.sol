// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserValueManager {
    // State Variables
    address public owner;
    mapping(address => uint256) public userValues;

    // Constructor to initialize owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to restrict access to only owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    // Public function to set user value, restricted to owner
    function setUserValue(address user, uint256 value) public onlyOwner {
        userValues[user] = value;
    }

    // View function to read a user's value
    function getUserValue(address user) public view returns (uint256) {
        return userValues[user];
    }

    // Pure function to calculate square of a number
    function square(uint256 number) public pure returns (uint256) {
        return number * number;
    }
}
