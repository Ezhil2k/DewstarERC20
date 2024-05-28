

# DewstarToken(DEW) ERC20 Token

**This project implements an ERC20 standard, providing similar functionality like Bitcoin with Capped supply and block Reward.**

## Tech Stack

- **Solidity**: Smart contract language for Ethereum.
- **Hardhat**: Ethereum development environment for compiling, testing, and deploying smart contracts.
- **OpenZeppelin**: Open-source framework for secure and community-vetted smart contract development.


## Features

- **Token Minting**: Functionality for creating new tokens.
- **Token Transfer**: Ability to transfer tokens between addresses.
- **Token Balance**: Check the balance of a specific address.
- **Block Reward**: Specifiy miners's Block reward for the mining the block. 
- **Capped Supply**: The supply Cap(20240 DEW) is fixed when the contract is deployed.
- **Token Burn**: Burn the token away from the supply.

## Process

The project started with setting up the development environment using **Hardhat** and defining the token contract according to the ERC20 standard using **OpenZeppelin** library. Testing was performed using Hardhat's built-in testing framework, and deployment scripts were written to deploy the contract to various Ethereum networks.

## Learnings

Throughout the project, several key learnings were gained:

- Understanding of the ERC20 standard and its implementation with best practices.
- Proficiency in using Hardhat for Ethereum smart contract development.
- Experience with testing smart contracts using Hardhat's testing framework.
-Deploying contract and verifying it from hardhat framework.

## ++ Improvement

Areas for improvement in the project include:

- Enhancing security measures to protect against potential vulnerabilities.
- Optimizing gas efficiency for smart contract interactions.

## Running the Project

To run the ERC20 token project locally, follow these steps:

1. Clone the repository: 
``` bash
git clone https://github.com/Ezhil2k/DewstarERC20.git
```
2. Install dependencies: 
```bash
npm install
```
3. Compile the contracts: 
``` bash
npx hardhat compile
```
4. Run tests: 
```bash
npx hardhat test
```
5. Deploy the contract: 
```bash
npx hardhat run scripts/deploy.js --network sepolia 
```
6. Verify the contract: 
```bash 
npx hardhat verify --network sepolia <address> <arguments>
```

### Environment Variables

Below are the required environment variables for the project:

- `PRIVATE_KEY`: The private key used for accessing Ethereum accounts or signing transactions.
- `SEPOLIA_INFURA_ENDPOINT`: The endpoint URL for the Infura node used for interacting with the Ethereum network.
- `ETHERSCAN_KEY`: Your API key for Etherscan, which may be used for contract verification or accessing Etherscan's API.

### check the token in sepolia etherscan : 
https://sepolia.etherscan.io/token/0x9905bA4865dB402a4EB05118A1e8860B465AFA7e

![image](https://github.com/Ezhil2k/DewstarERC20/assets/56902453/ef5c0cf9-b830-4a2e-967c-8e040c46fb59)
