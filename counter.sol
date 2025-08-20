
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract Counter {
    uint256 public counter;
    mapping (address => uint256) public counterPerAddress;
    constructor(uint256 _initialCounter){
        counter = _initialCounter;
    }
    function incrementUser() public oneEther {
        counter += 1;
        counterPerAddress[msg.sender]+=1;
    }
    function usercount(address _user)public view returns (uint256){
        return counterPerAddress[_user];
    }
    modifier oneEther(){
        require(msg.value>=1 ether,"minimum 1 ether required");
        _;
    }
    function even(uint256 number)public pure returns (bool){
        return (number % 2 == 0);
    }
}