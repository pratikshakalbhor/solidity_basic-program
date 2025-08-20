
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Register {//state var
    uint public userCount;
    //constructor
    constructor()
    {
        userCount=0;
    } 
    //mapping
    mapping (uint=>bool) userRegistrations;
    //modifier
    modifier checkValue()
    {
        require(msg.value==500000000000000000 wei, "Value is not 0.5 Eth");
        _;
    }
    //function with modifier
    function registerUser(uint value, bool fact) public payable  checkValue
    {
        userRegistrations[value]= fact;
    }
    // view function to check if user is registered
    function checkRegister(uint know) public view
    {
        userRegistrations[know];
    }
    //pure function to check if local var is +ve
    function checkPositive(int num) public pure returns (string memory)
    {
        if(num>0)
        return "Number is Positive";
        else if(num <0)
        return "Number is Negative";
        else 
        return "Zero";
    }
}
