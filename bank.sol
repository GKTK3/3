// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Bank {

    mapping(address => uint256) public balanceOf;   

    function deposit(uint256 amount) public {
        balanceOf[msg.sender] += amount;     
    }

    function withdraw(uint256 amount) public {
        require(amount <= balanceOf[msg.sender]);
        balanceOf[msg.sender] -= amount;
    }

    function getBalance() public view returns (uint256) {
        return balanceOf[msg.sender];
    }
}
