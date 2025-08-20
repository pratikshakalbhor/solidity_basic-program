// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

contract local
{
    uint public age =10;

 function setter(uint newage) public 
 {
    age = newage;
 }

}