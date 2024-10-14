// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "./collectionInfo.sol";
import "./MerkleProofForWhiteList.sol";

contract SuryaErc721Contracts is ERC721, CollectionInfo, AccessControl, MerkleProofForWhiteList {

   constructor(string memory _name, string memory _symbol, uint256 _supply)
    CollectionInfo( _supply) 
    ERC721(_name, _symbol) 
   {
     _grantRole(DEFAULT_ADMIN_ROLE,msg.sender);
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

   function WhiteListMint(uint256 _amount, bytes32[] memory proof, bytes32 leaf) external _isSufficentToken _isUserWhitelisted(proof, leaf) {
       for (uint i = 0; i < _amount; i++) { 
        _mint(msg.sender, totalSupply);
        tokenCount();
       }
   } 

   function publicMint(uint256 _amount) external _isSufficentToken {
       for (uint i = 0; i < _amount; i++) { 
        _mint(msg.sender, totalSupply);
        tokenCount();
       }
   } 

   function configureNftCollection(bytes calldata _data) external onlyRole(DEFAULT_ADMIN_ROLE) {
    (uint256 _supply, uint256 _totalSupply, bytes32 _root) = abi.decode(_data, (uint256, uint256, bytes32));
    totalSupply = _totalSupply;
    supply = _supply;
    Root = _root;
   }


   function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721, AccessControl) returns (bool) {
        return super.supportsInterface(interfaceId);
   }
}