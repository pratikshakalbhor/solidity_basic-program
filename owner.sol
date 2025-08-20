
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract userValueManeger{
    address public owner;
    mapping (address=> uint256) public userValue;
    constructor(){
        owner = msg.sender;
    }
    function setUservalu(address user,uint256 value)public onlyOwner{
        userValue[user]=value;
    }
    function getUser(address user)public view returns (uint256){
        return userValue[user];
    }
    modifier onlyOwner(){
        require(msg.sender==owner,"Not authorized");
        _;
    }
    function squre(uint256 no)public pure returns (uint256){
        return no*no;
    }
}