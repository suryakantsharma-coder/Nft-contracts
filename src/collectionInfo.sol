// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


contract CollectionInfo {
    string public collection_name;
    string public collection_symbol;
    uint256 public supply;
    uint256 public totalSupply;

    constructor (string memory _name, string memory _symbol, uint256 _supply) {
        collection_name = _name;
        collection_symbol = _symbol;
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