# On-Chain Receipt Generator

## Introduction
The **On-Chain Receipt Generator** is a smart contract built on the Ethereum blockchain that allows users to generate and store transaction receipts on-chain. Each receipt records important transaction details, including the sender, receiver, amount, timestamp, and a custom description.

## Features
- **Secure & Transparent**: Receipts are stored immutably on the blockchain.
- **User-Friendly**: Anyone can issue and retrieve receipts.
- **Event Logging**: Emits an event upon receipt creation for easy tracking.
- **Public Access**: Allows users to query stored receipts.

## Smart Contract
The contract is written in Solidity and offers the following functions:
- `issueReceipt(address _receiver, uint256 _amount, string memory _description)`: Creates a new receipt and logs it on-chain.
- `getReceiptCount()`: Returns the total number of receipts stored.
- `getReceipt(uint256 index)`: Retrieves receipt details based on the provided index.

## How It Works
1. Deploy the smart contract on an Ethereum-compatible blockchain.
2. Users call `issueReceipt()` to create a new receipt.
3. Receipts can be queried using `getReceiptCount()` and `getReceipt(index)`.
4. The contract emits an event whenever a receipt is issued.

## Technologies Used
- **Solidity**: Smart contract development.
- **Ethereum Blockchain**: For decentralized receipt storage.
- **Web3.js (Optional for Frontend)**: To interact with the smart contract.

## Setup & Deployment
1. Install dependencies if using a local blockchain environment:
   ```sh
   npm install -g truffle
   npm install -g ganache-cli
   ```
2. Compile and deploy the contract using Hardhat or Truffle.
3. Interact with the contract using Remix IDE or a frontend application.

## License
This project is licensed under the MIT License.

---
For more details, visit the official documentation or the smart contract code.

