//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract WhileLoop{
 uint public numbers;

 function print() public {
    uint i = 1;
    while (i<=10) 
    {
        numbers++;
        i = i+1;
    }
   }
   function getNumbers() public view returns(uint){
    return numbers;
   }
 }