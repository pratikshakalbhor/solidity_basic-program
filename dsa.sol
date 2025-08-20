// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserLocker {
   
    bool public locked;
    
    
    mapping(address => bool) public userLocks;
    
  
    constructor() {
        locked = false;
    }
    
  
    modifier whenUserNotLocked(address user) {
        require(!userLocks[user], "User is already locked");
        _;
    }
    
    
    function lockUser(address user) public whenUserNotLocked(user) {
        userLocks[user] = true;
    }
    
    
    function getUserLockStatus(address user) public view returns (bool) {
        return userLocks[user];
    }
    
    
    function bitwiseAnd(uint a, uint b) public pure returns (uint) {
        return a & b;
    }
}