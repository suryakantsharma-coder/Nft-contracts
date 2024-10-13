// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


contract CollectionInfo {
    uint256 public supply;
    uint256 public totalSupply;

    constructor (uint256 _supply) {
        supply = _supply;
        totalSupply = 1;
    }

    function tokenCount() internal {
        totalSupply++;
    }

    modifier _isSufficentToken {
        require(supply >= totalSupply, "Insufficient tokens.");
        _;
    }

}