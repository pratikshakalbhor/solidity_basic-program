// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserLockManager {
    // State Variables
    bool public locked;
    mapping(address => bool) public userLocks;

    // Constructor to initialize locked to false
    constructor() {
        locked = false;
    }

    // Modifier to ensure the user is not already locked
    modifier notLocked(address user) {
        require(!userLocks[user], "User is already locked");
        _;
    }

    // Public function to lock a user
    function lockUser(address user) public notLocked(user) {
        userLocks[user] = true;
    }

    // View function to check a user's lock status
    function isUserLocked(address user) public view returns (bool) {
        return userLocks[user];
    }

    // Pure function to return bitwise AND of two uint variables
    function bitwiseAnd(uint256 a, uint256 b) public pure returns (uint256) {
        return a & b;
    }
}
