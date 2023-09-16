// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Wallet {
    uint256 public balance;

    constructor() {}

    function deposit(uint _amount) public payable {
        balance += _amount;
    }

    function getWeiBalance() public view returns(uint256) {
        return balance * 10**18;
    }

    function getGweiBalance() public view returns(uint256) {
        return balance * 10**9;
    }

    function getEtherBalance() public view returns(uint256) {
        return balance;
    }
}