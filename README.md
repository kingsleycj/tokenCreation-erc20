# eNaira (eNGN) ERC-20 Token

## Overview
This project is an ERC-20 token implementation using Solidity and Hardhat. The token is named **eNaira** with the symbol **eNGN**. It was deployed on the **Base Sepolia Testnet**.

## Deployment Details
- **Network:** Base Sepolia Testnet
- **Contract Address:** [0x3856B1C711cA4a919bFE56064228AF1fCc02e210](https://sepolia.basescan.org/address/0x3856B1C711cA4a919bFE56064228AF1fCc02e210)
- **Transaction Hash:** [0xc2dd86067a08200282b870bb10a6a5f19068661f0283e13cad315117bb03cbe5](https://sepolia.basescan.org/tx/0xc2dd86067a08200282b870bb10a6a5f19068661f0283e13cad315117bb03cbe5)
- **Verified Contract on Etherscan:** [View Contract](https://sepolia.basescan.org/address/0x3856B1C711cA4a919bFE56064228AF1fCc02e210#code)

## Features
- Implements ERC-20 standard
- Mintable by the owner
- Ownable contract structure

## Token Functionality
### **Minting Tokens**
The contract includes a `mint` function that allows the contract owner to mint additional tokens:
```solidity
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}
```
- Only the **owner** of the contract can call this function.
- New tokens are created and sent to the specified `to` address.


## Installation and Setup
To use or modify this project, follow these steps:

### Prerequisites
Ensure you have the following installed:
- [Node.js](https://nodejs.org/)
- [Hardhat](https://hardhat.org/)
- npm

### Clone the Repository
```sh
git clone https://github.com/kingsleycj/tokenCreation-erc20.git
cd tokenCreation-er20
```

### Install Dependencies
```sh
npm install
```

### Configuration
Create a `.env` file in the project root and add:
```sh
BASE_SEPOLIA_RPC_URL=<your_base_sepolia_rpc_url>
PRIVATE_KEY=<your_wallet_private_key>
BASESCAN_API_KEY=<your_basescan_api_key>
```

### Compile the Contract
```sh
npx hardhat compile
```

### Deploy the Contract
```sh
npx hardhat run scripts/deploy.js --network baseSepolia
```

### Verify the Contract
```sh
npx hardhat verify --network baseSepolia 0x3856B1C711cA4a919bFE56064228AF1fCc02e210 <owner_address>
```

## Screenshots

### Development phase
 > Deployment 
 ![deployment](<deployment.png>)


> Verification 
![verification](<verification.png>)

> Transaction Details
![Txn Details](<Txn details.png>)

### Sending Tests

> Sending test
![Sending](<sending token.png>)


> Confirmation
![Confirmation](<Completion.png>)