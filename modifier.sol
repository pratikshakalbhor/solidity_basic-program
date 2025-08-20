// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserValueManager {
    address public owner; // State variable to store the owner's address
    mapping(address => uint256) public userValues; // Mapping to store user values

    // Constructor to initialize the owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to restrict access to only the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    // Function to set user value, restricted to owner only
    function setUserValue(address user, uint256 value) public onlyOwner {
        userValues[user] = value;
    }

    // View function to get a user's value
    function getUserValue(address user) public view returns (uint256) {
        return userValues[user];
    }

    // Pure function to calculate square of a number
    function square(uint256 number) public pure returns (uint256) {
        return number * number;
    }
}
