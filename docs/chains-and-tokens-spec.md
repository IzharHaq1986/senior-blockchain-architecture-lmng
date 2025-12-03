# LMNG-Style Blockchain Architecture (Draft)
This document outlines the early architectural thinking for a multi-chain token and puzzle
ecosystem similar to the LMNG concept. All items marked “Proposed” reflect reasonable defaults 
and best practices. Items under “To be confirmed” identify points that would normally require
clarification before implementation.

## Target Chains
### Proposed
Ethereum mainnet as the primary chain for LMNG.
Polygon PoS as a secondary chain for lower-cost interactions.
Use Alchemy or Infura as RPC providers for both networks.
Maintain consistent contract interfaces across supported chains.

### To be confirmed
Whether LMNG must be deployed on both chains or only one initially.
Any planned expansion to additional L2s (Arbitrum, Base, Optimism).
Requirements for cross-chain bridging or token synchronization.
Preferred RPC provider if the team already uses one.

## LMNG Token
### Proposed
Standard: ERC20 using OpenZeppelin audited contracts.
Fixed total supply defined at deployment.
Minting disabled after initial supply allocation.
Transfers unrestricted by default to keep the design simple.
Optional burn function allowed but not required.
Intended utility: reward payouts for completing puzzles or challenges.

### To be confirmed
Exact total supply and distribution rules.
Whether LMNG should support minting or burning in production.
Any lockup, vesting, or restricted transfer rules.
Whether rewards must be on-chain only or mixed with off-chain logic.
Expected token governance or owner permissions.

## Other Token Types (ERC20, ERC721, ERC1155)
### Proposed
ERC721 for unique puzzle completion rewards or achievement collectibles.
ERC1155 for batch-style puzzle items or multi-tier reward structures.
Metadata stored off-chain using a simple JSON structure.
Token URIs served from a lightweight backend or static storage.

### To be confirmed
Whether both ERC721 and ERC1155 are required or only one.
Specific metadata fields for puzzle rewards.
Whether dynamic metadata updates are needed during gameplay.
Expected volume of tokens per user (affects storage planning).

## Security and Gas Considerations
### Proposed
Use only OpenZeppelin contracts for ERC20, ERC721, and ERC1155.
Keep puzzle logic off-chain to avoid high gas costs.
Minimize external calls and complex state writes.
Use simple ownership pattern for contract administration.
Follow standard testnet verification on Etherscan/Polygonscan.

### To be confirmed
Any requirement for contract upgradeability (Transparent or UUPS).
Security audit expectations and whether a formal review is needed.
Explicit gas budget or user fee expectations.
Need for pause, blacklist, or circuit-breaker features.

## Environments (Dev, Testnet, Mainnet)
### Proposed
Development: Hardhat local network with auto-forking from Ethereum if needed.
Testnet: Sepolia for Ethereum and Amoy/Mumbai for Polygon.
Mainnet deployments only after full testnet validation.
Maintain separate .env files for dev, testnet, and production.
Use standard verification flows for contract publishing.

### To be confirmed
Preferred testnets if the team already uses specific ones.
Requirements for CI/CD deployment pipelines.
Expected frequency of contract updates or redeployments.
Whether multiple environments (staging, QA) are required.
