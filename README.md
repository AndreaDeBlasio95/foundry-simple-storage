# SimpleStorage Project

## Overview
SimpleStorage is a basic smart contract implementation using Solidity that allows the storing and retrieving of numerical values, mapping names to favorite numbers, and managing a list of individuals with their respective favorite numbers. The project is built using Foundry, a modern smart contract development tool, providing an ideal setup for testing and deployment on the Ethereum blockchain.

## Project Structure
```
.
├── README.md
├── foundry.toml
├── src
│   └── SimpleStorage.sol
└── script
    └── DeploySimpleStorage.s.sol
```

### Key Components
- `SimpleStorage.sol`: Contains the smart contract code for storage operations.
- `DeploySimpleStorage.s.sol`: Script to deploy the SimpleStorage contract using Foundry's environment.

## Requirements
- Solidity ^0.8.19
- Foundry (install with `curl -L https://foundry.paradigm.xyz | bash` and `foundryup`)

## Setup
To initialize the project and install dependencies:
```bash
forge init SimpleStorage --template https://github.com/foundry-rs/forge-template
cd SimpleStorage
```

## Compilation
Compile the smart contract using:
```bash
forge build
```
This command compiles the contract and generates artifacts in the `out` directory.

## Testing
Run automated tests for the smart contract with:
```bash
forge test
```

## Deployment
To deploy the `SimpleStorage` contract, use the following commands:

1. **Local Simulation:**
   ```bash
   forge script script/DeploySimpleStorage.s.sol --fork-url http://localhost:8545
   ```

2. **Onchain Deployment (requires Anvil or Ganache):**
   ```bash
   anvil
   # In a new terminal
   forge script script/DeploySimpleStorage.s.sol --rpc-url http://localhost:8545 --broadcast --private-key YOUR_PRIVATE_KEY_HERE
   ```

Replace `YOUR_PRIVATE_KEY_HERE` with your actual private key. Ensure this key is only used for development purposes.

## Interacting with the Contract
### Using `cast`:
`cast` is a CLI tool provided by Foundry for interacting with Ethereum contracts. For example, to call the `retrieve` function:
```bash
cast call <DEPLOYED_CONTRACT_ADDRESS> "retrieve()(uint256)"
```

## Environment Configuration
Set environment variables in a `.env` file in your project's root directory:
```
RPC_URL=http://127.0.0.1:8545
PRIVATE_KEY=<Your Private Key>
```
Load environment variables:
```bash
source .env
```
