// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

contract MerkleProofForWhiteList {
    bytes32 public Root;

    function setRoot(bytes32 _root) internal {
        Root = _root;
    }

    modifier _isUserWhitelisted(bytes32[] memory proof, bytes32 leaf) {
        require(MerkleProof.verify(proof, Root, leaf), "User not whitelist.");
        _;
    }

}