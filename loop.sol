
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract Loop{
    function _loop() public pure  returns(uint256){
        uint256 sum = 0 ;
        for (uint256 i = 1; i < 10; i++) 
        {
            if (i == 3) {
                continue ;
            }
            if(i == 7){
                break ;
            }
            sum += i ;
        }
        return sum ;
    }
}