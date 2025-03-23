const { ethers } = require("hardhat");

async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("Deploying contract with account:", deployer.address);

    const Token = await ethers.getContractFactory("eNaira");
    const token = await Token.deploy(deployer.address);

    await token.deployed();
    console.log("eNaira Token deployed to:", token.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.log(error);
        process.exit(1);
    });
