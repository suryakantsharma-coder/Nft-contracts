# ERC721 Feature-Enhanced Contract

This repository provides a modular ERC721 implementation with additional features including whitelist handling using Merkle Trees, collection management for token supply and minting, and role-based access control using OpenZeppelin's `AccessControl`.

## Key Features

### 1. **Merkle Tree Whitelist**

- Implements a Merkle Tree system to manage a whitelist for minting tokens.
- Includes a modifier `onlyWhitelisted` to restrict functions to addresses included in the whitelist.

### 2. **Collection Information Management**

- Manages the total token supply and tracks the number of minted tokens.
- Modifier `checkSupply` ensures that minting cannot exceed the predefined total supply.

### 3. **Role-Based Access Control**

- Uses OpenZeppelin’s `AccessControl` to manage role-based permissions.
- Enables specific functions to be accessible only to addresses with the required roles.

## Contract Breakdown

### **MerkleTree.sol**

This contract handles whitelist functionality:

- `setWhitelistRoot`: Updates the Merkle Tree root for whitelist verification.
- `verifyWhitelist`: Verifies whether a given address is included in the whitelist based on Merkle proof.
- **Modifiers**:
  - `onlyWhitelisted`: Restricts minting to addresses included in the Merkle Tree.

### **CollectionInfo.sol**

This contract is responsible for managing the collection's total supply and tracking minting activity:

- `setMaxSupply`: Defines the maximum supply of tokens.
- `totalMinted`: Tracks the number of tokens that have been minted.
- **Modifiers**:
  - `checkSupply`: Ensures the total supply limit is enforced during minting.

### **AccessControl.sol**

OpenZeppelin's `AccessControl` is used for role-based access control:

- `grantRole`: Grants a specific role (e.g., MINTER_ROLE) to an address.
- `hasRole`: Checks if an address holds a specific role.
- **Modifiers**:
  - `onlyRole`: Restricts access to functions based on assigned roles.

## Installation

To integrate this contract system into your project, make sure to install the OpenZeppelin contracts library.
