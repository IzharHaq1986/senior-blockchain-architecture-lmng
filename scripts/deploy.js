async function main() {
  const LMNGToken = await ethers.getContractFactory("LMNGToken");
  const token = await LMNGToken.deploy();
  await token.deployed();

  console.log("LMNGToken deployed at:", token.address);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
