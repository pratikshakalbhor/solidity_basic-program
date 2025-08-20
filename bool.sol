// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FunctionExample {
    bool public flag = true; // Renamed 'num' to 'flag'

    function WriteFlag(bool GiveFlag) public {
        flag = GiveFlag;
    }

    function ReadFlag() public view returns (bool) {
        return flag;
    }
}
