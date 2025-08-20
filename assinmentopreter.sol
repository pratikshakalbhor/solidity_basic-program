
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.1;
contract AsinOpretr{
    function equalNumber(uint a, uint b) public pure returns (bool){
        return (a == b);
    }

    function greterNumber(uint a, uint b) public pure returns (bool){
        return (a >= b);
    }

    function lesserNumber(uint a, uint b) public pure returns (bool){
        return (a <= b);
    }

    function notNumber(uint a, uint b) public pure returns (bool){
        return (a != b);
    }

    function AddQualNumber(uint a, uint b) public pure returns (uint){
        return (a += b);
    }

    function MinusNumber(int a, int b) public pure returns (int){
        return (a -= b);
    }

     function MultNumber(uint a, uint b) public pure returns (uint){
        return (a *= b);
    }

     function diviNumber(int a, int b) public pure returns (int){
        return (a /= b);
    }

     function modulusNumber(uint a, uint b) public pure returns (uint){
        return (a %= b);
     }

     

}