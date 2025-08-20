
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

contract detaVeriable{
    function deta(int a, int b)public pure returns (int){
        if(a>b){
         return a;
        }else if(b>a){
            return b;
        }else {
            return 0;
        }
    }
}