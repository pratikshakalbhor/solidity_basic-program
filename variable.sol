
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VariableDemo {
    // State Variable (stored on the blockchain)
    uint public count = 5;
    function _Count() public view returns (uint) {
        return count;
    }
    // Function using a local variable
    function incrementCount() public {
        // Local Variable (used only in this function)
        uint temp = count + 1;

        // Updating the state variable
        count = temp;
    }

    // Function returning global variables
    function getBlockDetails() public view returns (uint blockNumber, uint gasLimit, address sender) {
        // Using global variables
        blockNumber = block.number;
        gasLimit = block.gaslimit;
        sender = msg.sender;
    }
}
