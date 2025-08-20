

//SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

contract detaVeriable{
    function deta(uint a, uint b)public pure returns (uint){
        if(a>=b){
         return a;
        }else if(b>=a){
            return b;
        }else {
            return 0;
        }
    }
}