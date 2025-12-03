// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract LMNGToken {
    string public name = "LMNG Token";
    string public symbol = "LMNG";
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    constructor() {
        uint256 initialSupply = 1_000_000 * 1e18;
        totalSupply = initialSupply;
        balanceOf[msg.sender] = initialSupply;
    }
}
