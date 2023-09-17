// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Looper {

    function runInfiniteLoop() public pure {
        uint sum = 0;

        for (uint i = 1; i <= 1000; i++) {
            sum += i;
        }
    }
}