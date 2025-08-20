
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract User {

    uint256 public balance;
    mapping(address => uint256) public userBalance;
   
    address public owner; // Corrected 'user' to 'owner'

    constructor(uint256 initialBalance) {
        owner = msg.sender;
        balance = initialBalance;
    }

    modifier OnlyAllow {
        require(msg.sender == owner, "Only owner can use this function");
        _;
    }

    function returnBalance(address _user) public view returns (uint256) {
        return _balances[_user];
    }
    function add(address user, uint256 amount) public OnlyAllow view returns (uint256) {
    _balance[user]= balance[user] + amount;
    return _balance[user];
     }
    function etherwei(uint256 WeiAmount) internal pure returns (uint256) {
        if (WeiAmount == 0) {
            return 0;
        }
        return WeiAmount;
    }
}
