
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract sumNumber{
    uint256 public count;

    function add() public view returns (uint256) {
        return count;
    }

    function incr() public {
        count += 1;
    }

    function decr() public {
        count -= 1;
    }
         
}
