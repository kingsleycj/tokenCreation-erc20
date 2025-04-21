# eNaira (eNGN) ERC-20 Token

## Overview
This project is an ERC-20 token implementation using Solidity and Hardhat. The token is named **eNaira** with the symbol **eNGN**. It was deployed on the **Base Sepolia Testnet**.

## Deployment Details
- **Network:** Base Sepolia Testnet
- **Contract Address:** [0x3856B1C711cA4a919bFE56064228AF1fCc02e210](https://sepolia.basescan.org/address/0x3856B1C711cA4a919bFE56064228AF1fCc02e210)
- **Transaction Hash:** [0xc2dd86067a08200282b870bb10a6a5f19068661f0283e13cad315117bb03cbe5](https://sepolia.basescan.org/tx/0xc2dd86067a08200282b870bb10a6a5f19068661f0283e13cad315117bb03cbe5)
- **Verified Contract on Etherscan:** [View Contract](https://sepolia.basescan.org/address/0x3856B1C711cA4a919bFE56064228AF1fCc02e210#code)

## Features
- Implements the ERC-20 standard token interface
- Mintable by the owner
- Ownable contract structure
- 18 decimal places (standard for ERC-20 tokens)
- Initial supply of 1,000,000 eNGN tokens

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

### **Initial Minting**

During contract deployment, 1,000,000 eNGN tokens are minted and assigned to the deployer:

```solidity
constructor(address initialOwner) 
    ERC20("eNaira", "eNGN") 
    Ownable(initialOwner)
{
    _mint(msg.sender, 1000000 * 10 ** decimals());
}
```

- The contract sets the deployer as the initial owner.
- A total of 1,000,000 tokens are minted at deployment.


## Installation and Setup
To use or modify this project, follow these steps:

### Prerequisites
Ensure you have the following installed:
- [Node.js](https://nodejs.org/)
- [Hardhat](https://hardhat.org/)
- [npm](https://npmjs.com/)
- [Metamask](https://metamask.io/)

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
npx hardhat verify --network baseSepolia <contract-address> <owner_address>
```

## Interacting with the Token
You can interact with the token using:

### MetaMask

1. Add the token to your MetaMask wallet:
2. Click "Import tokens"
3. Enter the contract address: `0x3856B1C711cA4a919bFE56064228AF1fCc02e210`
4. Symbol: eNGN
5. Decimals: 18


After inserting the Contract address, other parameters are automatically filled anyway.

## Project Structure

```
Erc20TokenProject/
│── contracts/ 
│   ├── eNaira.sol         
│── scripts/ 
│   ├── deploy.js            
│── screenshots/         
│   ├── Completion.png
│   ├── deployment.png
│   ├── importing token.png
│   ├── sending token.png
│   ├── Txn details.png
│   ├── verification.png
│── .gitignore
│── hardhat.config.js   
│── package.json        
│── README.md            

```
## Screenshots

### Development phase
 > Deployment 
 ![deployment](<screenshots/deployment.png>)


> Verification 
![verification](<screenshots/verification.png>)

> Transaction Details
![Txn Details](<screenshots/Txn details.png>)


### Importing token
> Importing
![importing](<screenshots/importing token.png>)

### Sending Tests

> Sending test
![Sending](<screenshots/sending token.png>)


> Confirmation
![Confirmation](<screenshots/Completion.png>)
