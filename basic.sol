
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract MyContract {
// State variable
uint256 public myNumber;
// Function to update the number
function setNumber(uint256 _newNumber) public {
myNumber = _newNumber;
}
// Function to get the number
function getNumber() public view returns (uint256) {
return myNumber;
}
}
