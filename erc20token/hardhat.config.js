require("@nomicfoundation/hardhat-toolbox");
require('dotenv').config();

const sepoliaUrl =  process.env.SEPOLIA_INFURA_ENDPOINT;
const privateKey = process.env.PRIVATE_KEY;

module.exports = {
  solidity: "0.8.20",
//   settings: {
//     optimizer: {
//       enabled: true,
//       runs: 1000,
//     },
//   },
// allowUnlimitedContractSize: true,
  networks: {
    sepolia: {
      url: sepoliaUrl,
      accounts: [privateKey],
      chainId: 11155111
    }
  }
};
