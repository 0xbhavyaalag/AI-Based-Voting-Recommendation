pragma solidity ^0.8.0;

// This contract issues and stores receipts for transactions on-chain.
contract OnChainReceiptGenerator {
    
    // Struct to store receipt details
    struct Receipt {
        address sender;
        address receiver;
        uint256 amount;
        uint256 timestamp;
        string description;
    }

    // Array to store all receipts
    Receipt[] public receipts;

    // Event to emit receipt details
    event ReceiptIssued(
        address indexed sender,
        address indexed receiver,
        uint256 amount,
        uint256 timestamp,
        string description
    );

    // Function to issue a new receipt
    function issueReceipt(address _receiver, uint256 _amount, string memory _description) public {
        receipts.push(Receipt(msg.sender, _receiver, _amount, block.timestamp, _description));
        emit ReceiptIssued(msg.sender, _receiver, _amount, block.timestamp, _description);
    }

    // Function to get the total number of receipts
    function getReceiptCount() public view returns (uint256) {
        return receipts.length;
    }

    // Function to retrieve a receipt by index
    function getReceipt(uint256 index) public view returns (address, address, uint256, uint256, string memory) {
        require(index < receipts.length, "Invalid receipt index");
        Receipt memory r = receipts[index];
        return (r.sender, r.receiver, r.amount, r.timestamp, r.description);
    }
}
