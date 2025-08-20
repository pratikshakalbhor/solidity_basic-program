// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract UintExample {
uint8 public smallNumber = 255; // Max value for uint8
uint16 public mediumNumber = 65000;
uint32 public largeNumber = 4000000000;
uint64 public veryLargeNumber = 9000000000000000000;
uint128 public hugeNumber = 340282366920938463463374607431768211455;
uint256 public maxNumber = type(uint256).max; // Max value of uint256
}