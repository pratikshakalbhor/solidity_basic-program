// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DataTypeFunctions {
    
    // Declare variables
    address public  myAddress;
    bool private myBool;
    uint256 private myUint;
    int256 private myInt;
    string private myString;
    bytes32 private myBytes;

    // ----- Address -----
    function writeAddress(address _addr) public {
        myAddress = _addr;
    }

    function readAddress() public view returns (address) {
        return myAddress;
    }

    // ----- Boolean -----
    function writeBool(bool _bool) public {
        myBool = _bool;
    }

    function readBool() public view returns (bool) {
        return myBool;
    }

    // ----- Unsigned Integer -----
    function writeUint(uint256 _uint) public {
        myUint = _uint;
    }

    function readUint() public view returns (uint256) {
        return myUint;
    }

    // ----- Signed Integer -----
    function writeInt(int256 _int) public {
        myInt = _int;
    }

    function readInt() public view returns (int256) {
        return myInt;
    }

    // ----- String -----
    function writeString(string memory _str) public {
        myString = _str;
    }

    function readString() public view returns (string memory) {
        return myString;
    }

    // ----- Bytes32 -----
    function writeBytes(bytes32 _bytes) public {
        myBytes = _bytes;
    }

    function readBytes() public view returns (bytes32) {
        return myBytes;
    }
}
