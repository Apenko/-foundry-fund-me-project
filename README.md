
```markdown
# FundMe.sol

A decentralized funding smart contract built with **Solidity** and **Foundry**.

## 📖 Overview
The **FundMe** contract allows users to:
- Contribute ETH to the contract
- Enforce a minimum funding amount (calculated in USD via Chainlink price feeds)
- Allow only the owner to withdraw funds

This project introduces **Chainlink oracles** and real-world use cases for decentralized applications.

## ⚒️ Tech Stack
- Solidity ^0.8.0
- Foundry (forge, cast, anvil)
- Chainlink price feed integration
- Ethereum testnets and mainnet 

## 🚀 Features
- Fund contract with ETH
- Enforce a minimum USD contribution using Chainlink Oracles
- Track all funders and their amounts (mapping + array)
- Owner-only withdrawal function
- Gas-optimized `cheaperWithdraw` function
- Accept ETH via `receive()` and `fallback()` functions
- Unit & integration tests with Foundry
- Deployment & interaction scripts (Foundry)
- Generate gas usage reports for optimization

## 🛠️ Setup & Usage
Clone the repo:
```bash
git clone https://github.com/Apenko/foundry-fund-me.git
cd foundry-fund-me
```
### Compile The Contract
```shell
forge build
```
### Run Test
```shell
forge test
```
### To Deploy
```shell
forge create src/FundMe.sol:FundMe --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY>
forge script script/DeployFundMe.s.sol
```
🧪 Testing

Includes unit tests with Foundry

Covers funding, withdrawal, and error conditions

📬 Deployment

Live on Ethereum testnets:

Sepolia (Recommended for testing)

📜 Acknowledgements

Cyfrin Updraft
 for structured learning

Patrick Collins
 for guidance


