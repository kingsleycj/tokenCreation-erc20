// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract eNaira is ERC20, Ownable {
    constructor(address initialOwner) 
        ERC20("eNaira", "eNGN") 
        Ownable(initialOwner)
    {
        // Mint 1,000,000 tokens to the contract deployer (Owner)
        // 18 decimals is the standard for ERC20 tokens
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
    
    // Allow the owner to mint additional tokens
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
