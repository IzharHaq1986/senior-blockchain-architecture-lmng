# LMNG Token – Smart Contract Project (Hardhat v2)

This repository demonstrates a complete end-to-end Ethereum smart contract workflow using Hardhat v2, Ethers.js v5, and a local development network.  
It is designed as a clean, professional sample for showcasing blockchain engineering expertise.

## Features
- Hardhat v2 development environment  
- Ethers.js v5 integration  
- Local blockchain testing with `npx hardhat node`  
- Automated deployment script  
- Minimal token contract (`LMNGToken.sol`)  
- GitHub-ready project structure for freelancing platforms

## Project Structure
smart-contract-env/
├── contracts/
│ └── LMNGToken.sol
├── scripts/
│ └── deploy.js
├── docs/
│ └── README.md
├── hardhat.config.js
└── package.json

## Deploy Locally
Start Hardhat network:
npx hardhat node

Deploy the LMNGToken contract:
npx hardhat run scripts/deploy.js --network localhost

Expected output includes the deployed contract address.

## Interact via Console
npx hardhat console --network localhost

Then:
```js
const LMNG = await ethers.getContractFactory("LMNGToken");
const token = LMNG.attach("YOUR_CONTRACT_ADDRESS");
await token.name();
await token.symbol();
await token.totalSupply();

