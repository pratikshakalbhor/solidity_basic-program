// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BalanceManager {
    uint256 public balance; // in wei
    address public owner;
    mapping(address => uint256) public userBalances;
    
    // Modifier to restrict function to owner only
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }
    
    // Constructor sets initial balance and owner
    constructor(uint256 initialBalance) {
        balance = initialBalance;
        owner = msg.sender;
    }
    
    // Function to add ether to userBalances (only callable by owner)
    function addToUserBalance(address user, uint256 amountInEther) public onlyOwner {
        uint256 amountInWei = etherToWei(amountInEther);
        userBalances[user] += amountInWei;
        balance -= amountInWei; // Deduct from contract balance
    }
    
    // View function to get a user's balance
    function getUserBalance(address user) public view returns (uint256) {
        return userBalances[user];
    }
    
    // Pure function to convert ether to wei
    function etherToWei(uint256 amountInEther) public pure returns (uint256) {
        return amountInEther * 1 ether;
    }
    
    // Function to receive ether
    receive() external payable {
        balance += msg.value;
    }
}