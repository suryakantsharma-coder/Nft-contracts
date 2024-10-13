// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./collectionInfo.sol";

contract SuryaErc721Contracts is ERC721, CollectionInfo {

   constructor(string memory _name, string memory _symbol, uint256 _supply)
    CollectionInfo(_name, _symbol, _supply) 
    ERC721(_name, _symbol) 
   {
     
   }

   function publicMint(uint256 _amount) external _isSufficentToken {
       for (uint i = 0; i < _amount; i++) { 
        _mint(msg.sender, totalSupply);
        tokenCount();
       }
   } 
}