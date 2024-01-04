
const hre = require("hardhat");

async function main() {

  const DewstarToken = await hre.ethers.getContractFactory("DewstarToken");
  console.log("GOT CONTRACT");
  const dewstarToken = await DewstarToken.deploy(20240,10);
  console.log("DEPLOYING CONTRACT");
  await dewstarToken.waitForDeployment();
  
  console.log("DewstarToken address is :", dewstarToken.target);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });