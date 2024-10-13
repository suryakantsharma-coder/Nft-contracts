// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./collectionInfo.sol";

contract SuryaErc721Contracts is ERC721, CollectionInfo {

   constructor(string memory _name, string memory _symbol, uint256 _supply)
    CollectionInfo( _supply) 
    ERC721(_name, _symbol) 
   {
     
   }

   function airdropTokens(address[] calldata _address, uint256 _amount) external {
      require(totalSupply + (_amount * _address.length) <= supply, "Insufficient token.");
      for (uint i = 0; i < _address.length; i++) { 
        for (uint j = 0; j < _amount; j++) {
        _mint(_address[i], totalSupply);
        tokenCount();
        }
       }
   }

   function publicMint(uint256 _amount) external _isSufficentToken {
       for (uint i = 0; i < _amount; i++) { 
        _mint(msg.sender, totalSupply);
        tokenCount();
       }
   } 
}