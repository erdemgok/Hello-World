const { ethers } = require("hardhat");

async function main() {
  const helloWorldContract = await ethers.getContractFactory("HelloWorld");

  const deployedHelloWorldContract = await helloWorldContract.deploy();

  await deployedHelloWorldContract.deployed();

  console.log(
    "Hello World Contract Address",
    deployedHelloWorldContract.address
  );
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
